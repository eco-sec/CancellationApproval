Read `MAP.md` first (definitions, service tasks, CPI/HANA calls, who starts this workflow). Platform rules: `../../CLAUDE.md`.

# CancellationApproval — working notes

Process description, context/field lists, level definitions, step-by-step flows and history: `docs/REFERENCE.md` (read on demand).

## Live definition
- `workflows/CancellationApproval.workflow` is the only definition and the deployed one (`../../components.yaml` main_definitions: `CancellationApproval`).
- Web IDE project `cancellationapproval`, account `p6lg1ba5nh` (`.che/project.json`).

## Editing conventions
- Scripts are ES5, run inside the workflow engine and mutate `$.context.*` directly; task outcome via `$.usertasks.usertask2.last.decision === "reject"`; runtime id via `$.info.workflowInstanceId`.
- Script tasks point at files by project-absolute path: `"reference": "/scripts/CancellationApproval/<name>.js"`. `initialize Variable .js` has a space in its name on purpose.
- User task form: `"formReference": "/forms/TrainingApprovalV2/CancellationApproval.form"` (folder name is historical). Form field names must match context variable names (CPI `get User Tasks Details` reads them).
- Test data: `sample-data/TrainingApprovalV2/sampleData.json` (referenced from the `.workflow` SampleContext).
- Referenced by the live definition: `initialize Variable .js`, `getApproverList.js`, `checkRejection.js`, `AfterApprovalScript.js`, `prepareInitialRequest.js`, `prepareMailFormat.js`, `prepareDecisionMailBilingual.js`, `updateWorkflowLog.js`, `prepareOriginalWorklfowLog.js`, `prepareOriginalWorklfowLogFinal.js`.
- NOT referenced (legacy, keep out of new code): `checkLeaveRequest.js`, `prepareNotificationListMailFormat.js`, `ref email/*`, `test.html` (rendered mail preview).

## Mail
- Two mail paths coexist in the live definition:
  - Approver-request mail: `prepareMailFormat.js` still builds an ECC `NotificationSet` HTML payload (`MailRequestBody`) → CPI `employee/notification` (tasks "send mail" / "send Mail Using ECC").
  - Decision mail: `prepareDecisionMailBilingual.js` builds a data-only payload (`MailDecisionRequestBody`) with `MailStatus` = `CANCELLED_BY_EMPLOYEE_APPROVED` | `CANCELLED_BY_EMPLOYEE_REJECT` → CPI `lms/sendDecisionMail` (iFlow `Send Training Decision Notification`, HTML rendered by its `script1.groovy`). Any new `MailStatus` must be added to that Groovy (it also knows `CANCELLATION_APPROVER_REQUEST`, not yet used here).
- Gotcha: `prepareNotificationListMailFormat.js` (unreferenced) carries the hard-coded FLP deep link with InstanceID `97817543-268e-11ef-9baf-fa163e8cf11f`; do not copy it.

## Destinations / gotchas
- `CPI` for every iFlow call; `HANA_DB_DEV_LMS` only for the two `PATCH /xsodata/WorkflowReportService.xsodata/WorkflowLogRequest('${context.originalWorkflowInstance}')` tasks — they update the ORIGINAL training-request log row, not this instance.
- Rejection sets `currentLevel = 99` (`checkRejection.js`); `getApproverList.js` treats `Level` 4 specially.
- LMS statuses: initial `Request_to_Cancel_By_Employee` (`prepareInitialRequest.js`); final `Cancelled_By_Employee` / `Enrolled_By_Approvers` / `Enrolled_by_Admin–IT_2002_Succ` (`AfterApprovalScript.js`).

## Deploy
- Build + deploy the `.workflow` from SAP Web IDE (Neo): right-click project → Deploy → Deploy to SAP Cloud Platform. The form deploys with the definition; there is no local build, lint or CI.
- `./create-zip.sh` produces an import zip for Web IDE (excludes `.git`, `CLAUDE.md`, `.claude/`).
