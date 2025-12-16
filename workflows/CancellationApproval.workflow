{
	"contents": {
		"945832c6-8abf-490c-ac10-8ecc70cc1865": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "cancellationapproval",
			"subject": "CancellationApproval",
			"name": "CancellationApproval",
			"lastIds": "71be7503-1cd3-498c-add6-78fccf40f247",
			"events": {
				"486a59c6-9c32-4c7b-87c0-54876454d69a": {
					"name": "StartEvent1"
				},
				"ac78511b-ef39-42f9-9e9c-79b7249cbb3e": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"45e2761a-3ee1-4f19-945e-358564edfcbf": {
					"name": "Check is Workflow compele"
				},
				"f9bb08e8-558a-43a7-97da-3ca9241ce5d8": {
					"name": "Cancellation Request"
				},
				"95c2bfab-26f8-4a4b-9e89-81a563e0a350": {
					"name": "Get Approver List"
				},
				"53c518da-d175-42a1-8e0a-c2a709d39e32": {
					"name": "validate approval list"
				},
				"2390af3d-1aec-4f72-85ca-98dab3d32e66": {
					"name": "intialize Variable"
				},
				"d4f0d8c4-5874-4c01-8aa6-6279600b9fdb": {
					"name": "after approval  Process script"
				},
				"edba6d26-0a84-4075-b070-6365b03d0892": {
					"name": "check rejection"
				},
				"32a213f6-3330-480c-9eb2-b5aaf2c59036": {
					"name": "Update LMS and cancel leave"
				},
				"526822a3-0660-413e-b8fc-04eafc51cc48": {
					"name": "prepare Approver's mail"
				},
				"80cad7b5-a8fd-4663-84b8-943417fb170d": {
					"name": "check if existing Mail Approver"
				},
				"7720db41-deb2-4e9b-a0ea-a9ac6b97c7f6": {
					"name": "send mail"
				},
				"f3d10854-1063-4bd0-a06e-25a2bd3669b2": {
					"name": "update LMS Status"
				},
				"42891347-7fb4-4d25-a68a-4dee4bd8e610": {
					"name": "prepare initial Data request"
				},
				"2318213e-3b38-48e6-99eb-507410aaff4c": {
					"name": "prepare update workflow log"
				},
				"12c1c880-4bf4-4a8e-a6e1-a9a45316ce39": {
					"name": "update workflow log"
				},
				"addcdeac-e0bd-4ce1-8b59-fcce8c212337": {
					"name": "Get Class Orginal Status"
				},
				"388df84c-d503-448f-b99d-63732c8323ec": {
					"name": "prepare original Workflow log"
				},
				"1e64b2aa-2954-464a-b61d-27046af18abd": {
					"name": "update original  workflow "
				},
				"2b5fc8cb-5877-4204-b3ae-46577d9914b8": {
					"name": "prepare Original Workflow log"
				},
				"5dc8a79e-9aab-432b-83ca-792b1fe9adc6": {
					"name": "update original  workflow "
				},
				"3b3afaf7-9123-4c28-8af2-359d5e4bb4db": {
					"name": "prepare Decision Mail"
				},
				"aab66ec1-f2d1-45a8-ba24-dd05951960dd": {
					"name": "Send Decision Mail"
				}
			},
			"sequenceFlows": {
				"55c91dba-ef32-445d-8b20-ef3e779e334c": {
					"name": "SequenceFlow1"
				},
				"c62d1368-0c4f-4b16-82c4-c4730441ea6e": {
					"name": "SequenceFlow11"
				},
				"025d0160-755a-40a7-bd11-efa29ea8f9c6": {
					"name": "send approval to users"
				},
				"77b1a630-f7d0-4f59-8e4c-4a0988fd03c2": {
					"name": "SequenceFlow14"
				},
				"c3ab2877-4824-4573-9a62-84220749de6f": {
					"name": "workflow complete"
				},
				"e5cd4847-bc97-4027-ba4a-dfb2d7e2f029": {
					"name": "SequenceFlow19"
				},
				"81aa115a-01d9-4a1a-8799-db67fce2e4fd": {
					"name": "SequenceFlow24"
				},
				"04194602-714e-4c33-852c-b2d45c203ed4": {
					"name": "SequenceFlow45"
				},
				"c0e2e4bd-8304-4247-8fa7-a6040019dec4": {
					"name": "SequenceFlow48"
				},
				"f37d402d-0ca6-4651-9d9d-3c2b47daf972": {
					"name": "send mail to approver"
				},
				"d4b6dab1-c7b3-4b64-a4d0-6fcd63537a9c": {
					"name": "SequenceFlow62"
				},
				"6c1d8574-dcf1-4adb-8bae-781e33d40f55": {
					"name": "SequenceFlow64"
				},
				"e736af10-aaaf-4efa-a1d5-ec144b93ed22": {
					"name": "SequenceFlow72"
				},
				"09713e5f-b399-490a-bcf0-bdb5483903cf": {
					"name": "SequenceFlow73"
				},
				"5cf7fe68-7274-439b-8d6e-3d7902d1630b": {
					"name": "SequenceFlow76"
				},
				"ebe6e9fa-644b-4bed-8066-ea62f5264c22": {
					"name": "SequenceFlow81"
				},
				"a6e8d678-e9a8-42b1-94c1-69ea9e525315": {
					"name": "SequenceFlow82"
				},
				"a5167b5d-8070-42b5-9699-3cb480b2bd19": {
					"name": "SequenceFlow83"
				},
				"068d9249-351d-4a2a-83f9-4e9737b4c4a4": {
					"name": "SequenceFlow85"
				},
				"0a64cf69-e85b-404e-8ccb-e2b7923967cc": {
					"name": "SequenceFlow86"
				},
				"53755996-0cac-4da1-9014-621a14ad45ab": {
					"name": "SequenceFlow87"
				},
				"3f1aa94b-14d6-4528-bdf8-3abfdfad8b05": {
					"name": "SequenceFlow88"
				},
				"21a0b52d-171c-426a-b59e-a5591bebcef4": {
					"name": "SequenceFlow89"
				},
				"40f1de1d-1567-41cd-9e95-ba5e596f711d": {
					"name": "SequenceFlow90"
				},
				"9b951a8e-a8ae-4e85-8c7d-afcd0133bfc2": {
					"name": "SequenceFlow91"
				}
			},
			"diagrams": {
				"86018c30-58c5-418d-8e87-2f57ae346393": {}
			}
		},
		"486a59c6-9c32-4c7b-87c0-54876454d69a": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"391fc1e9-c23f-458c-a208-cd10afe79053": {}
			}
		},
		"ac78511b-ef39-42f9-9e9c-79b7249cbb3e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"45e2761a-3ee1-4f19-945e-358564edfcbf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Check is Workflow compele",
			"default": "025d0160-755a-40a7-bd11-efa29ea8f9c6"
		},
		"f9bb08e8-558a-43a7-97da-3ca9241ce5d8": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Cancellation Approval For : ${context.employeeId}  Request ID : ${context.requestId}",
			"description": "Cancellation Approval For: ${context.employeeName}  Request ID : ${context.classDescription}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.userIdsArray} ",
			"formReference": "/forms/TrainingApprovalV2/CancellationApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "CancellationApproval"
			}, {
				"key": "formRevision",
				"value": "v1"
			}],
			"customAttributes": [],
			"id": "usertask2",
			"name": "Cancellation Request"
		},
		"95c2bfab-26f8-4a4b-9e89-81a563e0a350": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "employee/approvers?employeeId=${context.employeeId}&trainingType=${context.trainingTypeId}&level=01",
			"httpMethod": "GET",
			"responseVariable": "${context.approverList}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "Get Approver List"
		},
		"53c518da-d175-42a1-8e0a-c2a709d39e32": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/getApproverList.js",
			"id": "scripttask1",
			"name": "validate approval list"
		},
		"2390af3d-1aec-4f72-85ca-98dab3d32e66": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/initialize Variable .js",
			"id": "scripttask2",
			"name": "intialize Variable"
		},
		"d4f0d8c4-5874-4c01-8aa6-6279600b9fdb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/AfterApprovalScript.js",
			"id": "scripttask3",
			"name": "after approval  Process script"
		},
		"edba6d26-0a84-4075-b070-6365b03d0892": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/checkRejection.js",
			"id": "scripttask5",
			"name": "check rejection"
		},
		"32a213f6-3330-480c-9eb2-b5aaf2c59036": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "cancellation/cancelLeave",
			"httpMethod": "POST",
			"requestVariable": "${context.cancellationCpiRequestBody}",
			"responseVariable": "${context.cancellationCpiResponseBody}",
			"id": "servicetask5",
			"name": "Update LMS and cancel leave"
		},
		"526822a3-0660-413e-b8fc-04eafc51cc48": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareMailFormat.js",
			"id": "scripttask9",
			"name": "prepare Approver's mail"
		},
		"80cad7b5-a8fd-4663-84b8-943417fb170d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "check if existing Mail Approver",
			"default": "f37d402d-0ca6-4651-9d9d-3c2b47daf972"
		},
		"7720db41-deb2-4e9b-a0ea-a9ac6b97c7f6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "employee/notification",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.MailRequestBody}",
			"responseVariable": "${context.MailResponseBody}",
			"id": "servicetask9",
			"name": "send mail"
		},
		"f3d10854-1063-4bd0-a06e-25a2bd3669b2": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "LMS/changeStatus",
			"httpMethod": "POST",
			"requestVariable": "${context.LmsRequestBody}",
			"responseVariable": "${context.LmsResponseBody}",
			"id": "servicetask16",
			"name": "update LMS Status"
		},
		"42891347-7fb4-4d25-a68a-4dee4bd8e610": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareInitialRequest.js",
			"id": "scripttask15",
			"name": "prepare initial Data request"
		},
		"2318213e-3b38-48e6-99eb-507410aaff4c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/updateWorkflowLog.js",
			"id": "scripttask16",
			"name": "prepare update workflow log"
		},
		"12c1c880-4bf4-4a8e-a6e1-a9a45316ce39": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "/updateWorkflowlog",
			"httpMethod": "POST",
			"requestVariable": "${context.workflowRequest}",
			"responseVariable": "${context.workflowRequestResponse}",
			"id": "servicetask17",
			"name": "update workflow log"
		},
		"addcdeac-e0bd-4ce1-8b59-fcce8c212337": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "/lms/getClassInfo?classId=${context.classId}&employeeId=${context.employeeId}",
			"httpMethod": "GET",
			"responseVariable": "${context.lmsDataResponse}",
			"id": "servicetask18",
			"name": "Get Class Orginal Status"
		},
		"388df84c-d503-448f-b99d-63732c8323ec": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareOriginalWorklfowLog.js",
			"id": "scripttask17",
			"name": "prepare original Workflow log"
		},
		"1e64b2aa-2954-464a-b61d-27046af18abd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "HANA_DB_DEV_LMS",
			"destinationSource": "consumer",
			"path": "/xsodata/WorkflowReportService.xsodata/WorkflowLogRequest('${context.originalWorkflowInstance}')",
			"httpMethod": "PATCH",
			"requestVariable": "${context.originalWorkflowlogReqest}",
			"responseVariable": "${context.originalWorkflowlogResponse}",
			"id": "servicetask19",
			"name": "update original  workflow "
		},
		"2b5fc8cb-5877-4204-b3ae-46577d9914b8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareOriginalWorklfowLogFinal.js",
			"id": "scripttask18",
			"name": "prepare Original Workflow log"
		},
		"5dc8a79e-9aab-432b-83ca-792b1fe9adc6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "HANA_DB_DEV_LMS",
			"destinationSource": "consumer",
			"path": "/xsodata/WorkflowReportService.xsodata/WorkflowLogRequest('${context.originalWorkflowInstance}')",
			"httpMethod": "PATCH",
			"requestVariable": "${context.originalWorkflowlogReqest}",
			"responseVariable": "${context.originalWorkflowlogResponse}",
			"id": "servicetask20",
			"name": "update original  workflow "
		},
		"55c91dba-ef32-445d-8b20-ef3e779e334c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "486a59c6-9c32-4c7b-87c0-54876454d69a",
			"targetRef": "addcdeac-e0bd-4ce1-8b59-fcce8c212337"
		},
		"c62d1368-0c4f-4b16-82c4-c4730441ea6e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "95c2bfab-26f8-4a4b-9e89-81a563e0a350",
			"targetRef": "53c518da-d175-42a1-8e0a-c2a709d39e32"
		},
		"025d0160-755a-40a7-bd11-efa29ea8f9c6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "send approval to users",
			"sourceRef": "45e2761a-3ee1-4f19-945e-358564edfcbf",
			"targetRef": "526822a3-0660-413e-b8fc-04eafc51cc48"
		},
		"77b1a630-f7d0-4f59-8e4c-4a0988fd03c2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "f9bb08e8-558a-43a7-97da-3ca9241ce5d8",
			"targetRef": "edba6d26-0a84-4075-b070-6365b03d0892"
		},
		"c3ab2877-4824-4573-9a62-84220749de6f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isApprovedComplete}",
			"id": "sequenceflow18",
			"name": "workflow complete",
			"sourceRef": "45e2761a-3ee1-4f19-945e-358564edfcbf",
			"targetRef": "d4f0d8c4-5874-4c01-8aa6-6279600b9fdb"
		},
		"e5cd4847-bc97-4027-ba4a-dfb2d7e2f029": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "d4f0d8c4-5874-4c01-8aa6-6279600b9fdb",
			"targetRef": "32a213f6-3330-480c-9eb2-b5aaf2c59036"
		},
		"81aa115a-01d9-4a1a-8799-db67fce2e4fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "32a213f6-3330-480c-9eb2-b5aaf2c59036",
			"targetRef": "2b5fc8cb-5877-4204-b3ae-46577d9914b8"
		},
		"04194602-714e-4c33-852c-b2d45c203ed4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow45",
			"name": "SequenceFlow45",
			"sourceRef": "526822a3-0660-413e-b8fc-04eafc51cc48",
			"targetRef": "80cad7b5-a8fd-4663-84b8-943417fb170d"
		},
		"c0e2e4bd-8304-4247-8fa7-a6040019dec4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow48",
			"name": "SequenceFlow48",
			"sourceRef": "7720db41-deb2-4e9b-a0ea-a9ac6b97c7f6",
			"targetRef": "526822a3-0660-413e-b8fc-04eafc51cc48"
		},
		"f37d402d-0ca6-4651-9d9d-3c2b47daf972": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow50",
			"name": "send mail to approver",
			"sourceRef": "80cad7b5-a8fd-4663-84b8-943417fb170d",
			"targetRef": "7720db41-deb2-4e9b-a0ea-a9ac6b97c7f6"
		},
		"d4b6dab1-c7b3-4b64-a4d0-6fcd63537a9c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow62",
			"name": "SequenceFlow62",
			"sourceRef": "2390af3d-1aec-4f72-85ca-98dab3d32e66",
			"targetRef": "42891347-7fb4-4d25-a68a-4dee4bd8e610"
		},
		"6c1d8574-dcf1-4adb-8bae-781e33d40f55": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.NoMoreMailApprover}",
			"id": "sequenceflow64",
			"name": "SequenceFlow64",
			"sourceRef": "80cad7b5-a8fd-4663-84b8-943417fb170d",
			"targetRef": "f9bb08e8-558a-43a7-97da-3ca9241ce5d8"
		},
		"e736af10-aaaf-4efa-a1d5-ec144b93ed22": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow72",
			"name": "SequenceFlow72",
			"sourceRef": "f3d10854-1063-4bd0-a06e-25a2bd3669b2",
			"targetRef": "95c2bfab-26f8-4a4b-9e89-81a563e0a350"
		},
		"09713e5f-b399-490a-bcf0-bdb5483903cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow73",
			"name": "SequenceFlow73",
			"sourceRef": "42891347-7fb4-4d25-a68a-4dee4bd8e610",
			"targetRef": "f3d10854-1063-4bd0-a06e-25a2bd3669b2"
		},
		"5cf7fe68-7274-439b-8d6e-3d7902d1630b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow76",
			"name": "SequenceFlow76",
			"sourceRef": "edba6d26-0a84-4075-b070-6365b03d0892",
			"targetRef": "95c2bfab-26f8-4a4b-9e89-81a563e0a350"
		},
		"ebe6e9fa-644b-4bed-8066-ea62f5264c22": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow81",
			"name": "SequenceFlow81",
			"sourceRef": "53c518da-d175-42a1-8e0a-c2a709d39e32",
			"targetRef": "2318213e-3b38-48e6-99eb-507410aaff4c"
		},
		"a6e8d678-e9a8-42b1-94c1-69ea9e525315": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow82",
			"name": "SequenceFlow82",
			"sourceRef": "2318213e-3b38-48e6-99eb-507410aaff4c",
			"targetRef": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39"
		},
		"a5167b5d-8070-42b5-9699-3cb480b2bd19": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow83",
			"name": "SequenceFlow83",
			"sourceRef": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39",
			"targetRef": "45e2761a-3ee1-4f19-945e-358564edfcbf"
		},
		"068d9249-351d-4a2a-83f9-4e9737b4c4a4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow85",
			"name": "SequenceFlow85",
			"sourceRef": "addcdeac-e0bd-4ce1-8b59-fcce8c212337",
			"targetRef": "388df84c-d503-448f-b99d-63732c8323ec"
		},
		"0a64cf69-e85b-404e-8ccb-e2b7923967cc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow86",
			"name": "SequenceFlow86",
			"sourceRef": "388df84c-d503-448f-b99d-63732c8323ec",
			"targetRef": "1e64b2aa-2954-464a-b61d-27046af18abd"
		},
		"53755996-0cac-4da1-9014-621a14ad45ab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow87",
			"name": "SequenceFlow87",
			"sourceRef": "1e64b2aa-2954-464a-b61d-27046af18abd",
			"targetRef": "2390af3d-1aec-4f72-85ca-98dab3d32e66"
		},
		"3f1aa94b-14d6-4528-bdf8-3abfdfad8b05": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow88",
			"name": "SequenceFlow88",
			"sourceRef": "2b5fc8cb-5877-4204-b3ae-46577d9914b8",
			"targetRef": "5dc8a79e-9aab-432b-83ca-792b1fe9adc6"
		},
		"21a0b52d-171c-426a-b59e-a5591bebcef4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow89",
			"name": "SequenceFlow89",
			"sourceRef": "5dc8a79e-9aab-432b-83ca-792b1fe9adc6",
			"targetRef": "3b3afaf7-9123-4c28-8af2-359d5e4bb4db"
		},
		"86018c30-58c5-418d-8e87-2f57ae346393": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"86c86a7d-b575-4cae-97cb-d8e3b974ca98": {},
				"6e052108-2958-4f53-b01d-5d88df4e91df": {},
				"eeb4bac8-934e-436f-8ea3-a25f7213eb25": {},
				"65927af5-175e-4869-ae4f-27a2d68a71c0": {},
				"e22a8db6-e327-48c5-b0c6-b6bba50477ea": {},
				"25a67e61-90c3-461c-ab8e-a474577377e1": {},
				"52f8154f-36cb-41b7-8b1f-3db9f11f01b2": {},
				"287a4f79-1516-4c0d-8b79-27dca53568af": {},
				"e1c339c4-791d-4ff8-9d75-f4bf12df0666": {},
				"20b28e93-307d-4687-8b77-b73040ee3413": {},
				"717acc92-e511-431b-ac46-8d0be8b5be33": {},
				"ca0a1130-cdf3-4eb6-a013-fd7dfe67317b": {},
				"c8e62873-1117-4138-a2aa-62f7a4fa013f": {},
				"71109aa3-f702-4b32-b63a-81c40b8481fb": {},
				"dc650d66-6fdc-48ab-94ae-23adfc84cdd6": {},
				"a68e6720-c4a2-411f-bbd0-87f1830e95b1": {},
				"36fdabfb-56aa-47d6-949c-acc09735c0af": {},
				"6ba4e70d-7647-4bab-920d-9aea17b52ca5": {},
				"c1d5962d-ec16-44be-b850-4a83a16399c4": {},
				"553cf18e-27f6-4069-9b6f-367f16ebe93c": {},
				"2009d23a-7038-49f3-9037-a3cf8e804484": {},
				"fb822758-2ca0-41bf-9797-82106b0c7e71": {},
				"f98cf008-b6aa-46a3-ade3-7ebf3d5b9e34": {},
				"67f18e43-6bbd-480c-9283-524e5ef26ed6": {},
				"af96c755-6884-4e5e-a3d2-f9bc8dee423d": {},
				"4c375a5f-bd7a-4e29-b392-739c93ed9de2": {},
				"4ae543db-26e8-4c99-a9b4-01e440b1fa4e": {},
				"dc2e4686-1bde-4053-a1e0-c05671961a1d": {},
				"00f399e6-e5c8-428d-9a16-300d2ef91c18": {},
				"9da32246-d7b3-46fe-8406-e47a4aefe8ef": {},
				"e3397f2a-5dfa-43aa-872a-f35951f2256a": {},
				"d1bac83c-812e-4714-aaaa-26ef506625cc": {},
				"77684a8a-f1c6-4c28-b7ca-8ea30a4af6af": {},
				"bfe5ddfc-70cc-422d-884a-3d9e5f62dbbd": {},
				"ecc17564-9643-4c94-b93d-93dfda557c68": {},
				"19cb5027-a522-4673-9440-1c4cbe172e6f": {},
				"3ce2f18b-3807-4a87-a705-a1fbf7056a85": {},
				"a1814472-4a00-4d2d-9032-4e3856e668ea": {},
				"31a59b4d-68e2-4048-b6ff-7f89c2dabbdf": {},
				"a98da693-4a69-4ce8-979c-8f32d284106d": {},
				"ee78e58e-ce69-4f7f-bf57-9c2dc9085aea": {},
				"003ed7c8-c229-4d0b-b1d6-55ea92e9952c": {},
				"382925c9-4d57-4924-b323-6dde70e03b81": {},
				"e8c472a5-7256-4f9b-aab7-565bf0d8d8bc": {},
				"d1fff5e3-3523-48d1-a9a8-ce202d35e282": {},
				"334c4a09-bb37-4671-bd1b-2ce5b83c090a": {},
				"eaff82b5-624d-44fe-b1dc-c570059408fd": {},
				"7b8f35be-fbeb-4f4d-b36d-edfdc73a98ef": {},
				"08317117-19f3-4e4e-970e-45415c1e58e9": {},
				"e34c54dc-49bf-4e89-a0c0-057826478a49": {}
			}
		},
		"391fc1e9-c23f-458c-a208-cd10afe79053": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/TrainingApprovalV2/sampleData.json",
			"id": "default-start-context"
		},
		"86c86a7d-b575-4cae-97cb-d8e3b974ca98": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -1121,
			"y": -238,
			"width": 32,
			"height": 32,
			"object": "486a59c6-9c32-4c7b-87c0-54876454d69a"
		},
		"6e052108-2958-4f53-b01d-5d88df4e91df": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1573,
			"y": -258,
			"width": 35,
			"height": 35,
			"object": "ac78511b-ef39-42f9-9e9c-79b7249cbb3e"
		},
		"eeb4bac8-934e-436f-8ea3-a25f7213eb25": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-1105,-222 -993.25,-222",
			"sourceSymbol": "86c86a7d-b575-4cae-97cb-d8e3b974ca98",
			"targetSymbol": "3ce2f18b-3807-4a87-a705-a1fbf7056a85",
			"object": "55c91dba-ef32-445d-8b20-ef3e779e334c"
		},
		"65927af5-175e-4869-ae4f-27a2d68a71c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 427,
			"y": -258,
			"object": "45e2761a-3ee1-4f19-945e-358564edfcbf"
		},
		"e22a8db6-e327-48c5-b0c6-b6bba50477ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -86,
			"y": 186,
			"width": 100,
			"height": 60,
			"object": "f9bb08e8-558a-43a7-97da-3ca9241ce5d8"
		},
		"25a67e61-90c3-461c-ab8e-a474577377e1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -135,
			"y": -252,
			"width": 112,
			"height": 60,
			"object": "95c2bfab-26f8-4a4b-9e89-81a563e0a350"
		},
		"52f8154f-36cb-41b7-8b1f-3db9f11f01b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-79,-225 79,-225",
			"sourceSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"targetSymbol": "287a4f79-1516-4c0d-8b79-27dca53568af",
			"object": "c62d1368-0c4f-4b16-82c4-c4730441ea6e"
		},
		"287a4f79-1516-4c0d-8b79-27dca53568af": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 29,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "53c518da-d175-42a1-8e0a-c2a709d39e32"
		},
		"e1c339c4-791d-4ff8-9d75-f4bf12df0666": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "445,-237 445,-119 562,-119 562,8",
			"sourceSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"targetSymbol": "c1d5962d-ec16-44be-b850-4a83a16399c4",
			"object": "025d0160-755a-40a7-bd11-efa29ea8f9c6"
		},
		"20b28e93-307d-4687-8b77-b73040ee3413": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-36.239999771118164,209.5 -36.239999771118164,-48.5",
			"sourceSymbol": "e22a8db6-e327-48c5-b0c6-b6bba50477ea",
			"targetSymbol": "dc650d66-6fdc-48ab-94ae-23adfc84cdd6",
			"object": "77b1a630-f7d0-4f59-8e4c-4a0988fd03c2"
		},
		"717acc92-e511-431b-ac46-8d0be8b5be33": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -620.5,
			"y": -252,
			"width": 100,
			"height": 60,
			"object": "2390af3d-1aec-4f72-85ca-98dab3d32e66"
		},
		"ca0a1130-cdf3-4eb6-a013-fd7dfe67317b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 566,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "d4f0d8c4-5874-4c01-8aa6-6279600b9fdb"
		},
		"c8e62873-1117-4138-a2aa-62f7a4fa013f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "448,-233 616,-233",
			"sourceSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"targetSymbol": "ca0a1130-cdf3-4eb6-a013-fd7dfe67317b",
			"object": "c3ab2877-4824-4573-9a62-84220749de6f"
		},
		"71109aa3-f702-4b32-b63a-81c40b8481fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "616,-228 773,-228",
			"sourceSymbol": "ca0a1130-cdf3-4eb6-a013-fd7dfe67317b",
			"targetSymbol": "a68e6720-c4a2-411f-bbd0-87f1830e95b1",
			"object": "e5cd4847-bc97-4027-ba4a-dfb2d7e2f029"
		},
		"dc650d66-6fdc-48ab-94ae-23adfc84cdd6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -86.47999954223633,
			"y": -85,
			"width": 100,
			"height": 60,
			"object": "edba6d26-0a84-4075-b070-6365b03d0892"
		},
		"a68e6720-c4a2-411f-bbd0-87f1830e95b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 723,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "32a213f6-3330-480c-9eb2-b5aaf2c59036"
		},
		"36fdabfb-56aa-47d6-949c-acc09735c0af": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "773,-227.875 916.25,-227.875",
			"sourceSymbol": "a68e6720-c4a2-411f-bbd0-87f1830e95b1",
			"targetSymbol": "382925c9-4d57-4924-b323-6dde70e03b81",
			"object": "81aa115a-01d9-4a1a-8799-db67fce2e4fd"
		},
		"6ba4e70d-7647-4bab-920d-9aea17b52ca5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 417,
			"y": 5,
			"width": 100,
			"height": 60,
			"isHidden": true
		},
		"c1d5962d-ec16-44be-b850-4a83a16399c4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 516,
			"y": -22,
			"width": 100,
			"height": 60,
			"object": "526822a3-0660-413e-b8fc-04eafc51cc48"
		},
		"553cf18e-27f6-4069-9b6f-367f16ebe93c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "560.5,8 560.5,116.75 475.5,116.75 475.5,216",
			"sourceSymbol": "c1d5962d-ec16-44be-b850-4a83a16399c4",
			"targetSymbol": "2009d23a-7038-49f3-9037-a3cf8e804484",
			"object": "04194602-714e-4c33-852c-b2d45c203ed4"
		},
		"2009d23a-7038-49f3-9037-a3cf8e804484": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 449,
			"y": 195,
			"object": "80cad7b5-a8fd-4663-84b8-943417fb170d"
		},
		"fb822758-2ca0-41bf-9797-82106b0c7e71": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 732,
			"y": 95,
			"width": 100,
			"height": 60,
			"object": "7720db41-deb2-4e9b-a0ea-a9ac6b97c7f6"
		},
		"f98cf008-b6aa-46a3-ade3-7ebf3d5b9e34": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "806,124.5 673.75,124.5 673.75,13.5 591,13.5",
			"sourceSymbol": "fb822758-2ca0-41bf-9797-82106b0c7e71",
			"targetSymbol": "c1d5962d-ec16-44be-b850-4a83a16399c4",
			"object": "c0e2e4bd-8304-4247-8fa7-a6040019dec4"
		},
		"67f18e43-6bbd-480c-9283-524e5ef26ed6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470,216.5 801,216.5 801,124.5",
			"sourceSymbol": "2009d23a-7038-49f3-9037-a3cf8e804484",
			"targetSymbol": "fb822758-2ca0-41bf-9797-82106b0c7e71",
			"object": "f37d402d-0ca6-4651-9d9d-3c2b47daf972"
		},
		"af96c755-6884-4e5e-a3d2-f9bc8dee423d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-570.5,-219 -430.875,-219",
			"sourceSymbol": "717acc92-e511-431b-ac46-8d0be8b5be33",
			"targetSymbol": "00f399e6-e5c8-428d-9a16-300d2ef91c18",
			"object": "d4b6dab1-c7b3-4b64-a4d0-6fcd63537a9c"
		},
		"4c375a5f-bd7a-4e29-b392-739c93ed9de2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470,216 1,216",
			"sourceSymbol": "2009d23a-7038-49f3-9037-a3cf8e804484",
			"targetSymbol": "e22a8db6-e327-48c5-b0c6-b6bba50477ea",
			"object": "6c1d8574-dcf1-4adb-8bae-781e33d40f55"
		},
		"4ae543db-26e8-4c99-a9b4-01e440b1fa4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -325.25,
			"y": -252,
			"width": 100,
			"height": 60,
			"object": "f3d10854-1063-4bd0-a06e-25a2bd3669b2"
		},
		"dc2e4686-1bde-4053-a1e0-c05671961a1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-275.25,-222 -79,-222",
			"sourceSymbol": "4ae543db-26e8-4c99-a9b4-01e440b1fa4e",
			"targetSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"object": "e736af10-aaaf-4efa-a1d5-ec144b93ed22"
		},
		"00f399e6-e5c8-428d-9a16-300d2ef91c18": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -480.875,
			"y": -246,
			"width": 100,
			"height": 60,
			"object": "42891347-7fb4-4d25-a68a-4dee4bd8e610"
		},
		"9da32246-d7b3-46fe-8406-e47a4aefe8ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-430.875,-219 -275.25,-219",
			"sourceSymbol": "00f399e6-e5c8-428d-9a16-300d2ef91c18",
			"targetSymbol": "4ae543db-26e8-4c99-a9b4-01e440b1fa4e",
			"object": "09713e5f-b399-490a-bcf0-bdb5483903cf"
		},
		"e3397f2a-5dfa-43aa-872a-f35951f2256a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 158.75,
			"y": -267,
			"width": 100,
			"height": 60,
			"object": "2318213e-3b38-48e6-99eb-507410aaff4c"
		},
		"d1bac83c-812e-4714-aaaa-26ef506625cc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 287.625,
			"y": -267.5,
			"width": 100,
			"height": 60,
			"object": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39"
		},
		"77684a8a-f1c6-4c28-b7ca-8ea30a4af6af": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-36.47999954223633,-55 -36.47999954223633,-138.75 -94,-138.75 -94,-210",
			"sourceSymbol": "dc650d66-6fdc-48ab-94ae-23adfc84cdd6",
			"targetSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"object": "5cf7fe68-7274-439b-8d6e-3d7902d1630b"
		},
		"bfe5ddfc-70cc-422d-884a-3d9e5f62dbbd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "79,-228 144.125,-228 144.125,-244 200,-244",
			"sourceSymbol": "287a4f79-1516-4c0d-8b79-27dca53568af",
			"targetSymbol": "e3397f2a-5dfa-43aa-872a-f35951f2256a",
			"object": "ebe6e9fa-644b-4bed-8066-ea62f5264c22"
		},
		"ecc17564-9643-4c94-b93d-93dfda557c68": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "208.75,-237 330,-237",
			"sourceSymbol": "e3397f2a-5dfa-43aa-872a-f35951f2256a",
			"targetSymbol": "d1bac83c-812e-4714-aaaa-26ef506625cc",
			"object": "a6e8d678-e9a8-42b1-94c1-69ea9e525315"
		},
		"19cb5027-a522-4673-9440-1c4cbe172e6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "337.625,-237.25 448,-237.25",
			"sourceSymbol": "d1bac83c-812e-4714-aaaa-26ef506625cc",
			"targetSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"object": "a5167b5d-8070-42b5-9699-3cb480b2bd19"
		},
		"3ce2f18b-3807-4a87-a705-a1fbf7056a85": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -1043.25,
			"y": -252,
			"width": 100,
			"height": 60,
			"object": "addcdeac-e0bd-4ce1-8b59-fcce8c212337"
		},
		"a1814472-4a00-4d2d-9032-4e3856e668ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-993.25,-219 -861.375,-219",
			"sourceSymbol": "3ce2f18b-3807-4a87-a705-a1fbf7056a85",
			"targetSymbol": "31a59b4d-68e2-4048-b6ff-7f89c2dabbdf",
			"object": "068d9249-351d-4a2a-83f9-4e9737b4c4a4"
		},
		"31a59b4d-68e2-4048-b6ff-7f89c2dabbdf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -911.375,
			"y": -246,
			"width": 100,
			"height": 60,
			"object": "388df84c-d503-448f-b99d-63732c8323ec"
		},
		"a98da693-4a69-4ce8-979c-8f32d284106d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-861.375,-217.5 -715.9375,-217.5",
			"sourceSymbol": "31a59b4d-68e2-4048-b6ff-7f89c2dabbdf",
			"targetSymbol": "ee78e58e-ce69-4f7f-bf57-9c2dc9085aea",
			"object": "0a64cf69-e85b-404e-8ccb-e2b7923967cc"
		},
		"ee78e58e-ce69-4f7f-bf57-9c2dc9085aea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -765.9375,
			"y": -249,
			"width": 100,
			"height": 60,
			"object": "1e64b2aa-2954-464a-b61d-27046af18abd"
		},
		"003ed7c8-c229-4d0b-b1d6-55ea92e9952c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-715.9375,-220.5 -570.5,-220.5",
			"sourceSymbol": "ee78e58e-ce69-4f7f-bf57-9c2dc9085aea",
			"targetSymbol": "717acc92-e511-431b-ac46-8d0be8b5be33",
			"object": "53755996-0cac-4da1-9014-621a14ad45ab"
		},
		"382925c9-4d57-4924-b323-6dde70e03b81": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 866.25,
			"y": -257.75,
			"width": 100,
			"height": 60,
			"object": "2b5fc8cb-5877-4204-b3ae-46577d9914b8"
		},
		"e8c472a5-7256-4f9b-aab7-565bf0d8d8bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "916.25,-230.9375 1096.875,-230.9375",
			"sourceSymbol": "382925c9-4d57-4924-b323-6dde70e03b81",
			"targetSymbol": "d1fff5e3-3523-48d1-a9a8-ce202d35e282",
			"object": "3f1aa94b-14d6-4528-bdf8-3abfdfad8b05"
		},
		"d1fff5e3-3523-48d1-a9a8-ce202d35e282": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1046.875,
			"y": -264.125,
			"width": 100,
			"height": 60,
			"object": "5dc8a79e-9aab-432b-83ca-792b1fe9adc6"
		},
		"334c4a09-bb37-4671-bd1b-2ce5b83c090a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1096.875,-233.96875 1257.6875,-233.96875",
			"sourceSymbol": "d1fff5e3-3523-48d1-a9a8-ce202d35e282",
			"targetSymbol": "eaff82b5-624d-44fe-b1dc-c570059408fd",
			"object": "21a0b52d-171c-426a-b59e-a5591bebcef4"
		},
		"7600bca2-ae80-4556-af6f-8d4add083222": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "/employee/notification",
			"httpMethod": "POST",
			"requestVariable": "${context.MailRequestBody}",
			"responseVariable": "${context.MailResponseBody}",
			"id": "servicetask8",
			"name": "send Mail Using ECC"
		},
		"71be7503-1cd3-498c-add6-78fccf40f247": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 3,
			"escalationeventdefinition": 1,
			"sequenceflow": 91,
			"startevent": 1,
			"boundaryescalationevent": 1,
			"endevent": 1,
			"usertask": 6,
			"servicetask": 21,
			"scripttask": 19,
			"mailtask": 4,
			"exclusivegateway": 9,
			"referencedsubflow": 2
		},
		"3b3afaf7-9123-4c28-8af2-359d5e4bb4db": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareDecisionMailBilingual.js",
			"id": "scripttask19",
			"name": "prepare Decision Mail"
		},
		"eaff82b5-624d-44fe-b1dc-c570059408fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1207.6875,
			"y": -263.8125,
			"width": 100,
			"height": 60,
			"object": "3b3afaf7-9123-4c28-8af2-359d5e4bb4db"
		},
		"40f1de1d-1567-41cd-9e95-ba5e596f711d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow90",
			"name": "SequenceFlow90",
			"sourceRef": "3b3afaf7-9123-4c28-8af2-359d5e4bb4db",
			"targetRef": "aab66ec1-f2d1-45a8-ba24-dd05951960dd"
		},
		"7b8f35be-fbeb-4f4d-b36d-edfdc73a98ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1257.6875,-233.984375 1437.09375,-233.984375",
			"sourceSymbol": "eaff82b5-624d-44fe-b1dc-c570059408fd",
			"targetSymbol": "08317117-19f3-4e4e-970e-45415c1e58e9",
			"object": "40f1de1d-1567-41cd-9e95-ba5e596f711d"
		},
		"aab66ec1-f2d1-45a8-ba24-dd05951960dd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "lms/sendDecisionMail",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.MailDecisionRequestBody}",
			"responseVariable": "${context.MailResponseBody}",
			"id": "servicetask21",
			"name": "Send Decision Mail"
		},
		"08317117-19f3-4e4e-970e-45415c1e58e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1387.09375,
			"y": -264.15625,
			"width": 100,
			"height": 60,
			"object": "aab66ec1-f2d1-45a8-ba24-dd05951960dd"
		},
		"9b951a8e-a8ae-4e85-8c7d-afcd0133bfc2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow91",
			"name": "SequenceFlow91",
			"sourceRef": "aab66ec1-f2d1-45a8-ba24-dd05951960dd",
			"targetRef": "ac78511b-ef39-42f9-9e9c-79b7249cbb3e"
		},
		"e34c54dc-49bf-4e89-a0c0-057826478a49": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1437.09375,-237.328125 1590.5,-237.328125",
			"sourceSymbol": "08317117-19f3-4e4e-970e-45415c1e58e9",
			"targetSymbol": "6e052108-2958-4f53-b01d-5d88df4e91df",
			"object": "9b951a8e-a8ae-4e85-8c7d-afcd0133bfc2"
		}
	}
}