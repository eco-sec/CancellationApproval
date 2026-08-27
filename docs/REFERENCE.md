# CancellationApproval — reference (read on demand)

Moved verbatim from the former 346-line `CLAUDE.md` (2026-08). Day-to-day rules live in `../CLAUDE.md`; service tasks / CPI / HANA calls in `../MAP.md`.

## Accuracy notes (checked against the code, 2026-08)
- The text below was written for the earlier no-show-style flow and is partly historical. In the live `workflows/CancellationApproval.workflow` there is **no** `PATCH /xsodata/CancellationService.xsodata/CancellationApproval(...)` task; the only HANA calls are two `PATCH /xsodata/WorkflowReportService.xsodata/WorkflowLogRequest('${context.originalWorkflowInstance}')` tasks (destination `HANA_DB_DEV_LMS`).
- `prepareNotificationListMailFormat.js`, `prepareInitiatorMailFormat.js` (does not exist in this project) and `checkLeaveRequest.js` are **not** referenced by the live definition. Decision mails go through `prepareDecisionMailBilingual.js` → CPI `lms/sendDecisionMail` (see `../CLAUDE.md`).
- `AfterApprovalScript.js` sets `Cancelled_By_Employee` / `Enrolled_By_Approvers` / `Enrolled_by_Admin–IT_2002_Succ`, not `ENROLL-NO-SHOW-*`; `prepareInitialRequest.js` sets `Request_to_Cancel_By_Employee`.
- `.che/project.json` says `lastVersionWeTriedToDeploy` **1.0.0** for this project (the 1.0.8 below belongs to NoShowApproval).
- `cf push` does not apply: this is a Neo Workflow project, deployed from SAP Web IDE.

---

## Overview

This is a **SAP Cloud Platform (SCP) Workflow Management System** for handling "Cancellation" approval processes for training events at Saudi Electricity Company (SEC). It implements a multi-level hierarchical approval workflow where managers and training coordinators can approve or reject employee absences from training programs.

**Technology Stack**: SAP Workflow Management, SAPUI5 Forms, JavaScript (ECMAScript), REST APIs
**Primary Use Case**: Training No-Show Approval & Notification System

## Project Type & Purpose

### Core Function
The CancellationApproval workflow automates the approval process when employees fail to attend scheduled training events. It:

1. Initiates when an employee misses a training session
2. Routes approval requests through multiple approval levels (Department Manager, Investigation Department, Training Coordinator)
3. Collects approver feedback and decision comments
4. Notifies relevant stakeholders via email with formatted HTML content
5. Updates LMS (Learning Management System) and HR systems with final approval status
6. Tracks workflow progress with comprehensive audit logging

## Architecture

### BPMN 2.0 Workflow Model
The application uses Business Process Model and Notation with:
- **User Tasks**: Interactive approval forms assigned to specific roles
- **Service Tasks**: Backend API calls for system integration
- **Script Tasks**: Business logic execution and data transformation
- **Exclusive Gateways**: Conditional routing based on decisions

### Multi-Level Approval Pattern
```
Level 1: Department Manager Review
  ↓ (Approval/Rejection)
Level 2: Investigation Department Review (if approved)
  ↓ (Approval/Rejection)
Level 3: Training Coordinator Review (if approved)
  ↓ (Approval/Rejection)
Level 4: Training Coordinator Notification
  ↓
Process Completion
```

### Service Integration Pattern
- **CPI Integration**: Cloud Platform Integration for employee approver lookup
- **HANA Database**: Direct OData service calls for status updates
- **Email Notification**: POST requests to employee notification service
- **LMS Updates**: Status synchronization with Learning Management System

## Directory Structure

```
CancellationApproval/
├── forms/                          # SAPUI5 Form Definitions
│   └── TrainingApprovalV2/
│       └── CancellationApproval.form    # Task form definition (JSON schema)
│
├── scripts/                        # Business Logic JavaScript Files
│   └── CancellationApproval/
│       ├── initialize Variable.js          # Initial context setup
│       ├── prepareInitialRequest.js        # Initial request body preparation
│       ├── getApproverList.js              # Approver filtering by level
│       ├── checkRejection.js               # Rejection handling & comment tracking
│       ├── AfterApprovalScript.js          # Post-approval status updates
│       ├── prepareMailFormat.js            # Approver notification email template
│       ├── prepareNotificationListMailFormat.js  # Notification list email template
│       ├── prepareInitiatorMailFormat.js   # Initiator progress email
│       ├── checkLeaveRequest.js            # Leave request validation
│       └── updateWorkflowLog.js            # Workflow audit logging
│
├── workflows/                      # BPMN Workflow Definitions
│   └── CancellationApproval.workflow    # Main workflow model (BPMN + JSON)
│
├── sample-data/                    # Test Data
│   └── TrainingApprovalV2/
│       └── sampleData.json        # Sample context/payload data
│
└── .che/                          # Project Configuration
    └── project.json               # SAP Web IDE Project Metadata
```

## Development Workflow

### Deployment Process
This is a **declarative workflow application** - no traditional build step required.

**Deployment to SAP Cloud Platform:**
```bash
# Via SAP Web IDE UI:
1. Right-click project → Deploy → Deploy to SAP Cloud Platform
2. Select target environment (Dev/Test/Production)
3. System validates workflow model and deploys as-is

# Via Command Line (if CF CLI available):
cf push
```

### Testing Workflow

**In SAP Web IDE:**
1. Open `workflows/CancellationApproval.workflow`
2. Right-click → "Test" or use Debug panel
3. Use sample data from `sample-data/TrainingApprovalV2/sampleData.json`
4. Simulate task completions and decisions
5. Inspect context variable changes

**Manual Testing:**
1. Deploy workflow to test environment
2. Access via SAP Fiori Launchpad (Workflow Inbox)
3. Trigger workflow with sample employee data
4. Complete user tasks with approval/rejection
5. Verify email notifications sent
6. Check database updates in LMS/HANA

### Development Cycle
```
1. Modify Workflow (CancellationApproval.workflow)
   ↓
2. Update Form (CancellationApproval.form) if UI changes needed
   ↓
3. Edit Scripts (scripts/CancellationApproval/*.js) for logic
   ↓
4. Test in Web IDE with sample data
   ↓
5. Deploy to development environment
   ↓
6. Execute test workflow instances
   ↓
7. Validate email outputs and database updates
   ↓
8. Promote to staging/production
```

## Configuration

### SAP Cloud Platform Settings
**File**: `.che/project.json`

- **Account ID**: p6lg1ba5nh (SAP Cloud Platform tenant)
- **Project Name**: cancellationapproval
- **Current Version**: 1.0.8
- **Supported Languages**: English, French, German (with Arabic support in emails)

### API Integration Endpoints

**1. Get Approver List**
```
Destination: CPI
Method: GET
Path: /employee/approvers?employeeId={employeeId}&trainingType={trainingTypeId}&level=01
Response Variable: ${context.approverList}
```

**2. Send Notifications**
```
Destination: CPI
Method: POST
Path: /employee/notification
Request Body: NotificationSet with HTML email content
Response Variable: ${context.MailResponseBody}
```

**3. Update No-Show Status (HANA)**
```
Destination: HANA_DB_DEV_LMS
Method: PATCH
Path: /xsodata/CancellationService.xsodata/CancellationApproval('${context.requestId}')
Request Body: {"STATUS": "Approved/Rejected"}
```

**4. Cancel Leave Request (LMS)**
```
Destination: CPI
Method: POST
Path: /cancellation/cancelLeave
Request Body: enrollmentStatus with decision and cancellation reason
```

**5. Update Workflow Log**
```
Destination: CPI
Method: POST
Path: /updateWorkflowlog
Request Body: workflowRequest with complete approval chain
```

## Core Data Model

### Workflow Context Structure

**Employee Information**
```javascript
{
  employeeId: "104465",
  employeeName: "RADHA KRISHNA CHILUMKURTHY",
  employeeEmail: "employee@sec.com",
  employeePosition: "Ex. Director",
  employeeOrganizationId: "Training Support",
  jobTitle: "Sr. Gen. Elect. Technician",
  gradeLevel: "49"
}
```

**Training/Event Information**
```javascript
{
  requestId: "104465--21",
  trainingTypeId: "6",
  classId: "21",
  classTitle: "Cancellation",
  classStartDate: "01/06/2025",
  classEndDate: "01/06/2025",
  classTotalDays: "3",
  country: "Saudi Arabia",
  city: "Jeddah",
  trainingCenterName: "SEC Dammam Training Center",
  trainingLanguage: "English",
  price: "1000",
  currency: "SAR"
}
```

**Approval Chain**
```javascript
{
  currentLevel: 1,              // Current approval level (1-3)
  isApprovedComplete: false,    // All approvals done?
  isRejected: false,            // Has been rejected?
  approverList: {               // All available approvers
    ApproverSet: {
      Approver: [
        {
          Agent: "101234",
          AgentName: "Manager Name",
          AgentEmail: "manager@sec.com",
          Level: "1",              // Approval level
          PositionName: "Manager",
          UserID: "user_id_sap"
        }
      ]
    }
  },
  filteredApprovers: [],        // Approvers for current level
  ApproverCommentList: []       // Audit trail of decisions
}
```

### Approval Level Definitions
- **Level 1**: Department Manager
- **Level 2**: Investigation Department
- **Level 3**: Training Coordinator
- **Level 4**: Training Coordinator (Special handling)
- **Level 99**: Workflow completion flag

## Key Code Patterns

### 1. Approver Filtering Algorithm
**File**: `scripts/CancellationApproval/getApproverList.js`

```javascript
// Increment level and filter approvers matching current level
$.context.currentLevel++;
var filteredApprovers = approvalList.filter(approver =>
  parseInt(approver.Level) === parseInt($.context.currentLevel)
);
```

Sequential level-based routing where each approval level must complete before moving to the next.

### 2. Rejection Handling
**File**: `scripts/CancellationApproval/checkRejection.js`

```javascript
if ($.usertasks.usertask2.last.decision === "reject") {
  $.context.isRejected = true;
  $.context.DecisionText = "Rejected";
  // Re-fetch all approvers and update notification list
}
```

When rejected, workflow escalates notifications but marks process as complete.

### 3. Email Template Generation
**Files**: `prepareMailFormat.js`, `prepareNotificationListMailFormat.js`, `prepareInitiatorMailFormat.js`

Dynamic HTML construction with employee/event data wrapped in NotificationSet payload format.

### 4. Status Update Logic
**File**: `scripts/CancellationApproval/AfterApprovalScript.js`

```javascript
var isRejected = $.usertasks.usertask2.last.decision === "reject";

// Update LMS enrollment status
$.context.LmsRequestBody = {
  enrollmentStatus: [{
    scheduleID: $.context.classId,
    userID: $.context.employeeId,
    newEnrollmentStatusID: isRejected ?
      "ENROLL-NO-SHOW-REJECTED" :
      "ENROLL-NO-SHOW-APPROVED"
  }]
};
```

## Important Notes

### Multi-Language Support
- Form labels in English
- Email templates in English and Arabic
- Date formatting for both locales
- Month names translated (يناير, فبراير, etc.)

### Conditional Email Routing
- **Mail to Approvers**: Only if approver has valid email
- **Mail to Notification List**: Specific department recipients
- **Mail to Initiator**: Progress updates for workflow originator
- **Validation**: Checks email length (>4 chars) and non-empty

### Audit Trail Tracking
- **ApproverCommentList**: Complete history of all approvals/rejections
- **lastApproverData**: Most recent approver decision
- **workflowInstanceId**: Unique identifier for audit purposes
- **creationTime**: ISO 8601 timestamp for tracking

### Integration Points
- **CPI (Cloud Platform Integration)**: Central hub for external API calls
- **HANA Database**: Direct OData service for synchronous updates
- **SAP Fiori Launchpad**: User task inbox and workflow UI
- **Email Service**: Notification delivery system

### Common Development Issues
- Service task destination not configured → 500 errors
- Invalid email format → Notification service rejects request
- Missing approvers at level → Workflow terminates unexpectedly
- Date format inconsistency → Template rendering errors

## Testing Data

Sample data is available in `sample-data/TrainingApprovalV2/sampleData.json` for:
- Web IDE testing and debugging
- Workflow logic validation
- Template rendering verification
- Integration payload testing
