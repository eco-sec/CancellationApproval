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
					"name": "after approval Process script"
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
				"c639a31b-3d34-4898-82af-07f094a529ea": {
					"name": "prepare For Notification List"
				},
				"a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6": {
					"name": "check if existing Notification Approver"
				},
				"f81b5a40-ce7b-453f-a703-e94c2c3ce60a": {
					"name": "send Mail"
				},
				"b773f295-9226-4381-bfc2-b0621b378dcb": {
					"name": "Update Cancellation Status"
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
				}
			},
			"sequenceFlows": {
				"55c91dba-ef32-445d-8b20-ef3e779e334c": {
					"name": "SequenceFlow1"
				},
				"c62d1368-0c4f-4b16-82c4-c4730441ea6e": {
					"name": "SequenceFlow11"
				},
				"aabd730a-d463-48c7-8c06-d581a39dd3f7": {
					"name": "SequenceFlow12"
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
				"375eee15-0edd-4be4-a396-eed9f48908ce": {
					"name": "SequenceFlow21"
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
				"6280bd5e-3b34-408f-b36b-ad3c9e76786e": {
					"name": "SequenceFlow65"
				},
				"614ebf6a-0884-4399-bc69-94adafe9e478": {
					"name": "SequenceFlow67"
				},
				"07fc04d5-6778-4b87-94a3-9f4cba0bfdc2": {
					"name": "send Mail"
				},
				"3c3d96a4-7451-43eb-ae0e-797b13e8e927": {
					"name": "SequenceFlow70"
				},
				"346df158-ecb3-4988-b384-8f0949c1e289": {
					"name": "SequenceFlow71"
				},
				"e736af10-aaaf-4efa-a1d5-ec144b93ed22": {
					"name": "SequenceFlow72"
				},
				"09713e5f-b399-490a-bcf0-bdb5483903cf": {
					"name": "SequenceFlow73"
				},
				"4c3104d7-cdcb-4ad2-ad3e-f33bf24d2738": {
					"name": "SequenceFlow74"
				},
				"158f72fc-3c8d-4100-b2b3-887a38f33e60": {
					"name": "SequenceFlow75"
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
			"name": "after approval Process script"
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
		"c639a31b-3d34-4898-82af-07f094a529ea": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/prepareNotificationListMailFormat.js",
			"id": "scripttask14",
			"name": "prepare For Notification List"
		},
		"a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway9",
			"name": "check if existing Notification Approver",
			"default": "07fc04d5-6778-4b87-94a3-9f4cba0bfdc2"
		},
		"f81b5a40-ce7b-453f-a703-e94c2c3ce60a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"destinationSource": "consumer",
			"path": "employee/notification",
			"httpMethod": "POST",
			"requestVariable": "${context.MailNotificationRequestBody}",
			"responseVariable": "${context.MailResponseBody}",
			"id": "servicetask14",
			"name": "send Mail"
		},
		"b773f295-9226-4381-bfc2-b0621b378dcb": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "HANA_DB_DEV_LMS",
			"destinationSource": "consumer",
			"path": "/xsodata/CancellationService.xsodata/CancellationApproval('${context.requestId}')",
			"httpMethod": "PATCH",
			"requestVariable": "${context.hanaRequestBody}",
			"responseVariable": "${context.hanaResponse}",
			"id": "servicetask15",
			"name": "Update Cancellation Status"
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
		"55c91dba-ef32-445d-8b20-ef3e779e334c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "486a59c6-9c32-4c7b-87c0-54876454d69a",
			"targetRef": "2390af3d-1aec-4f72-85ca-98dab3d32e66"
		},
		"c62d1368-0c4f-4b16-82c4-c4730441ea6e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "95c2bfab-26f8-4a4b-9e89-81a563e0a350",
			"targetRef": "53c518da-d175-42a1-8e0a-c2a709d39e32"
		},
		"aabd730a-d463-48c7-8c06-d581a39dd3f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "53c518da-d175-42a1-8e0a-c2a709d39e32",
			"targetRef": "2318213e-3b38-48e6-99eb-507410aaff4c"
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
		"375eee15-0edd-4be4-a396-eed9f48908ce": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "edba6d26-0a84-4075-b070-6365b03d0892",
			"targetRef": "c639a31b-3d34-4898-82af-07f094a529ea"
		},
		"81aa115a-01d9-4a1a-8799-db67fce2e4fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "32a213f6-3330-480c-9eb2-b5aaf2c59036",
			"targetRef": "b773f295-9226-4381-bfc2-b0621b378dcb"
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
		"6280bd5e-3b34-408f-b36b-ad3c9e76786e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow65",
			"name": "SequenceFlow65",
			"sourceRef": "c639a31b-3d34-4898-82af-07f094a529ea",
			"targetRef": "a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6"
		},
		"614ebf6a-0884-4399-bc69-94adafe9e478": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.NoMoreMailApprover}",
			"id": "sequenceflow67",
			"name": "SequenceFlow67",
			"sourceRef": "a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6",
			"targetRef": "95c2bfab-26f8-4a4b-9e89-81a563e0a350"
		},
		"07fc04d5-6778-4b87-94a3-9f4cba0bfdc2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow69",
			"name": "send Mail",
			"sourceRef": "a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6",
			"targetRef": "f81b5a40-ce7b-453f-a703-e94c2c3ce60a"
		},
		"3c3d96a4-7451-43eb-ae0e-797b13e8e927": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow70",
			"name": "SequenceFlow70",
			"sourceRef": "f81b5a40-ce7b-453f-a703-e94c2c3ce60a",
			"targetRef": "c639a31b-3d34-4898-82af-07f094a529ea"
		},
		"346df158-ecb3-4988-b384-8f0949c1e289": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow71",
			"name": "SequenceFlow71",
			"sourceRef": "b773f295-9226-4381-bfc2-b0621b378dcb",
			"targetRef": "ac78511b-ef39-42f9-9e9c-79b7249cbb3e"
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
				"902214c5-a37d-4398-a7a6-b4d1ddb9cce8": {},
				"e1c339c4-791d-4ff8-9d75-f4bf12df0666": {},
				"20b28e93-307d-4687-8b77-b73040ee3413": {},
				"717acc92-e511-431b-ac46-8d0be8b5be33": {},
				"ca0a1130-cdf3-4eb6-a013-fd7dfe67317b": {},
				"c8e62873-1117-4138-a2aa-62f7a4fa013f": {},
				"71109aa3-f702-4b32-b63a-81c40b8481fb": {},
				"dc650d66-6fdc-48ab-94ae-23adfc84cdd6": {},
				"6fcc50d9-4daa-4af1-9e68-36991348546a": {},
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
				"80b63cc3-0bd4-445e-98b7-307e46f3f07d": {},
				"b0d27139-1e5d-499f-924e-db0efcf18f3f": {},
				"2024bac8-c634-445d-8617-2ab358f62a02": {},
				"3723cd06-6dc9-4965-908a-1b4e13490e6a": {},
				"4c201e21-c8fb-4ab4-940d-62209546389a": {},
				"d2614c60-3ed3-4647-908c-7b59f45a5d21": {},
				"a7e32cdb-9ecc-40b2-8247-0e2a9b030794": {},
				"0c67839c-3ee1-4bff-9e3c-2fb38dd0e6ba": {},
				"e4381558-62c9-4c0a-b2af-5a931cfb1420": {},
				"4ae543db-26e8-4c99-a9b4-01e440b1fa4e": {},
				"dc2e4686-1bde-4053-a1e0-c05671961a1d": {},
				"00f399e6-e5c8-428d-9a16-300d2ef91c18": {},
				"9da32246-d7b3-46fe-8406-e47a4aefe8ef": {},
				"e3397f2a-5dfa-43aa-872a-f35951f2256a": {},
				"cc8d41af-745f-48c9-a405-a2f84046b41c": {},
				"d1bac83c-812e-4714-aaaa-26ef506625cc": {},
				"37320cc1-4407-4853-ab53-c63e461ac3a7": {}
			}
		},
		"391fc1e9-c23f-458c-a208-cd10afe79053": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/TrainingApprovalV2/sampleData.json",
			"id": "default-start-context"
		},
		"86c86a7d-b575-4cae-97cb-d8e3b974ca98": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -718,
			"y": -244,
			"width": 32,
			"height": 32,
			"object": "486a59c6-9c32-4c7b-87c0-54876454d69a"
		},
		"6e052108-2958-4f53-b01d-5d88df4e91df": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1070,
			"y": -246,
			"width": 35,
			"height": 35,
			"object": "ac78511b-ef39-42f9-9e9c-79b7249cbb3e"
		},
		"eeb4bac8-934e-436f-8ea3-a25f7213eb25": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-702,-228 -488.5,-228",
			"sourceSymbol": "86c86a7d-b575-4cae-97cb-d8e3b974ca98",
			"targetSymbol": "717acc92-e511-431b-ac46-8d0be8b5be33",
			"object": "55c91dba-ef32-445d-8b20-ef3e779e334c"
		},
		"65927af5-175e-4869-ae4f-27a2d68a71c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 459,
			"y": -249,
			"object": "45e2761a-3ee1-4f19-945e-358564edfcbf"
		},
		"e22a8db6-e327-48c5-b0c6-b6bba50477ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 78,
			"y": 186,
			"width": 100,
			"height": 60,
			"object": "f9bb08e8-558a-43a7-97da-3ca9241ce5d8"
		},
		"25a67e61-90c3-461c-ab8e-a474577377e1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -86,
			"y": -252,
			"width": 112,
			"height": 60,
			"object": "95c2bfab-26f8-4a4b-9e89-81a563e0a350"
		},
		"52f8154f-36cb-41b7-8b1f-3db9f11f01b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-30,-222 94,-222",
			"sourceSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"targetSymbol": "287a4f79-1516-4c0d-8b79-27dca53568af",
			"object": "c62d1368-0c4f-4b16-82c4-c4730441ea6e"
		},
		"287a4f79-1516-4c0d-8b79-27dca53568af": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 44,
			"y": -252,
			"width": 100,
			"height": 60,
			"object": "53c518da-d175-42a1-8e0a-c2a709d39e32"
		},
		"902214c5-a37d-4398-a7a6-b4d1ddb9cce8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "94,-223.5 221.75,-223.5",
			"sourceSymbol": "287a4f79-1516-4c0d-8b79-27dca53568af",
			"targetSymbol": "e3397f2a-5dfa-43aa-872a-f35951f2256a",
			"object": "aabd730a-d463-48c7-8c06-d581a39dd3f7"
		},
		"e1c339c4-791d-4ff8-9d75-f4bf12df0666": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "477,-228 477,122",
			"sourceSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"targetSymbol": "c1d5962d-ec16-44be-b850-4a83a16399c4",
			"object": "025d0160-755a-40a7-bd11-efa29ea8f9c6"
		},
		"20b28e93-307d-4687-8b77-b73040ee3413": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "124.26000022888184,209.5 124.26000022888184,128.5",
			"sourceSymbol": "e22a8db6-e327-48c5-b0c6-b6bba50477ea",
			"targetSymbol": "dc650d66-6fdc-48ab-94ae-23adfc84cdd6",
			"object": "77b1a630-f7d0-4f59-8e4c-4a0988fd03c2"
		},
		"717acc92-e511-431b-ac46-8d0be8b5be33": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -538.5,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "2390af3d-1aec-4f72-85ca-98dab3d32e66"
		},
		"ca0a1130-cdf3-4eb6-a013-fd7dfe67317b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 593,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "d4f0d8c4-5874-4c01-8aa6-6279600b9fdb"
		},
		"c8e62873-1117-4138-a2aa-62f7a4fa013f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "480,-228 643,-228",
			"sourceSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"targetSymbol": "ca0a1130-cdf3-4eb6-a013-fd7dfe67317b",
			"object": "c3ab2877-4824-4573-9a62-84220749de6f"
		},
		"71109aa3-f702-4b32-b63a-81c40b8481fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "643,-228 804,-228",
			"sourceSymbol": "ca0a1130-cdf3-4eb6-a013-fd7dfe67317b",
			"targetSymbol": "a68e6720-c4a2-411f-bbd0-87f1830e95b1",
			"object": "e5cd4847-bc97-4027-ba4a-dfb2d7e2f029"
		},
		"dc650d66-6fdc-48ab-94ae-23adfc84cdd6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 70.52000045776367,
			"y": 92,
			"width": 100,
			"height": 60,
			"object": "edba6d26-0a84-4075-b070-6365b03d0892"
		},
		"6fcc50d9-4daa-4af1-9e68-36991348546a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "120.76000022888184,122 120.76000022888184,37",
			"sourceSymbol": "dc650d66-6fdc-48ab-94ae-23adfc84cdd6",
			"targetSymbol": "80b63cc3-0bd4-445e-98b7-307e46f3f07d",
			"object": "375eee15-0edd-4be4-a396-eed9f48908ce"
		},
		"a68e6720-c4a2-411f-bbd0-87f1830e95b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 754,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "32a213f6-3330-480c-9eb2-b5aaf2c59036"
		},
		"36fdabfb-56aa-47d6-949c-acc09735c0af": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "804,-228 947,-228",
			"sourceSymbol": "a68e6720-c4a2-411f-bbd0-87f1830e95b1",
			"targetSymbol": "0c67839c-3ee1-4bff-9e3c-2fb38dd0e6ba",
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
			"x": 431,
			"y": 92,
			"width": 100,
			"height": 60,
			"object": "526822a3-0660-413e-b8fc-04eafc51cc48"
		},
		"553cf18e-27f6-4069-9b6f-367f16ebe93c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "475.5,122 475.5,216",
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
			"points": "806,126 506,126",
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
			"points": "-488.5,-226.5 -352.875,-226.5",
			"sourceSymbol": "717acc92-e511-431b-ac46-8d0be8b5be33",
			"targetSymbol": "00f399e6-e5c8-428d-9a16-300d2ef91c18",
			"object": "d4b6dab1-c7b3-4b64-a4d0-6fcd63537a9c"
		},
		"4c375a5f-bd7a-4e29-b392-739c93ed9de2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470,216 165,216",
			"sourceSymbol": "2009d23a-7038-49f3-9037-a3cf8e804484",
			"targetSymbol": "e22a8db6-e327-48c5-b0c6-b6bba50477ea",
			"object": "6c1d8574-dcf1-4adb-8bae-781e33d40f55"
		},
		"80b63cc3-0bd4-445e-98b7-307e46f3f07d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 71,
			"y": 7,
			"width": 100,
			"height": 60,
			"object": "c639a31b-3d34-4898-82af-07f094a529ea"
		},
		"b0d27139-1e5d-499f-924e-db0efcf18f3f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "121,37 121,-81",
			"sourceSymbol": "80b63cc3-0bd4-445e-98b7-307e46f3f07d",
			"targetSymbol": "2024bac8-c634-445d-8617-2ab358f62a02",
			"object": "6280bd5e-3b34-408f-b36b-ad3c9e76786e"
		},
		"2024bac8-c634-445d-8617-2ab358f62a02": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 100,
			"y": -102,
			"object": "a6f185d0-0e80-49c1-b6d4-a4d26f13d1b6"
		},
		"3723cd06-6dc9-4965-908a-1b4e13490e6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "120.5,-81 -20,-81 -20,-222",
			"sourceSymbol": "2024bac8-c634-445d-8617-2ab358f62a02",
			"targetSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"object": "614ebf6a-0884-4399-bc69-94adafe9e478"
		},
		"4c201e21-c8fb-4ab4-940d-62209546389a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 271,
			"y": -101,
			"width": 100,
			"height": 60,
			"object": "f81b5a40-ce7b-453f-a703-e94c2c3ce60a"
		},
		"d2614c60-3ed3-4647-908c-7b59f45a5d21": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "121,-80.5 284,-80.5",
			"sourceSymbol": "2024bac8-c634-445d-8617-2ab358f62a02",
			"targetSymbol": "4c201e21-c8fb-4ab4-940d-62209546389a",
			"object": "07fc04d5-6778-4b87-94a3-9f4cba0bfdc2"
		},
		"a7e32cdb-9ecc-40b2-8247-0e2a9b030794": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "349,-71 349,38 162,38",
			"sourceSymbol": "4c201e21-c8fb-4ab4-940d-62209546389a",
			"targetSymbol": "80b63cc3-0bd4-445e-98b7-307e46f3f07d",
			"object": "3c3d96a4-7451-43eb-ae0e-797b13e8e927"
		},
		"0c67839c-3ee1-4bff-9e3c-2fb38dd0e6ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 897,
			"y": -258,
			"width": 100,
			"height": 60,
			"object": "b773f295-9226-4381-bfc2-b0621b378dcb"
		},
		"e4381558-62c9-4c0a-b2af-5a931cfb1420": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "947,-228.25 1087.5,-228.25",
			"sourceSymbol": "0c67839c-3ee1-4bff-9e3c-2fb38dd0e6ba",
			"targetSymbol": "6e052108-2958-4f53-b01d-5d88df4e91df",
			"object": "346df158-ecb3-4988-b384-8f0949c1e289"
		},
		"4ae543db-26e8-4c99-a9b4-01e440b1fa4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -267.25,
			"y": -252,
			"width": 100,
			"height": 60,
			"object": "f3d10854-1063-4bd0-a06e-25a2bd3669b2"
		},
		"dc2e4686-1bde-4053-a1e0-c05671961a1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-217.25,-222 -30,-222",
			"sourceSymbol": "4ae543db-26e8-4c99-a9b4-01e440b1fa4e",
			"targetSymbol": "25a67e61-90c3-461c-ab8e-a474577377e1",
			"object": "e736af10-aaaf-4efa-a1d5-ec144b93ed22"
		},
		"00f399e6-e5c8-428d-9a16-300d2ef91c18": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -402.875,
			"y": -255,
			"width": 100,
			"height": 60,
			"object": "42891347-7fb4-4d25-a68a-4dee4bd8e610"
		},
		"9da32246-d7b3-46fe-8406-e47a4aefe8ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-352.875,-223.5 -217.25,-223.5",
			"sourceSymbol": "00f399e6-e5c8-428d-9a16-300d2ef91c18",
			"targetSymbol": "4ae543db-26e8-4c99-a9b4-01e440b1fa4e",
			"object": "09713e5f-b399-490a-bcf0-bdb5483903cf"
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
			"sequenceflow": 75,
			"startevent": 1,
			"boundaryescalationevent": 1,
			"endevent": 1,
			"usertask": 6,
			"servicetask": 17,
			"scripttask": 16,
			"mailtask": 4,
			"exclusivegateway": 9,
			"referencedsubflow": 2
		},
		"2318213e-3b38-48e6-99eb-507410aaff4c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancellationApproval/updateWorkflowLog.js",
			"id": "scripttask16",
			"name": "prepare update workflow log"
		},
		"e3397f2a-5dfa-43aa-872a-f35951f2256a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 171.75,
			"y": -255,
			"width": 100,
			"height": 60,
			"object": "2318213e-3b38-48e6-99eb-507410aaff4c"
		},
		"4c3104d7-cdcb-4ad2-ad3e-f33bf24d2738": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow74",
			"name": "SequenceFlow74",
			"sourceRef": "2318213e-3b38-48e6-99eb-507410aaff4c",
			"targetRef": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39"
		},
		"cc8d41af-745f-48c9-a405-a2f84046b41c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "221.75,-225.75 365.625,-225.75",
			"sourceSymbol": "e3397f2a-5dfa-43aa-872a-f35951f2256a",
			"targetSymbol": "d1bac83c-812e-4714-aaaa-26ef506625cc",
			"object": "4c3104d7-cdcb-4ad2-ad3e-f33bf24d2738"
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
		"d1bac83c-812e-4714-aaaa-26ef506625cc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 315.625,
			"y": -256.5,
			"width": 100,
			"height": 60,
			"object": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39"
		},
		"158f72fc-3c8d-4100-b2b3-887a38f33e60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow75",
			"name": "SequenceFlow75",
			"sourceRef": "12c1c880-4bf4-4a8e-a6e1-a9a45316ce39",
			"targetRef": "45e2761a-3ee1-4f19-945e-358564edfcbf"
		},
		"37320cc1-4407-4853-ab53-c63e461ac3a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "365.625,-227.25 480,-227.25",
			"sourceSymbol": "d1bac83c-812e-4714-aaaa-26ef506625cc",
			"targetSymbol": "65927af5-175e-4869-ae4f-27a2d68a71c0",
			"object": "158f72fc-3c8d-4100-b2b3-887a38f33e60"
		}
	}
}