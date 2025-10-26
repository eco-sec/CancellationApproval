// Assuming the context is already defined and contains the approvalList
// Read the existing approval list from the workflow context
var approvalList = $.context.approverList.ApproverSet.Approver;
$.context.isTrainingCoordinator = false;

// Read the current level and ensure it is treated as an integer

// Ensure approvalList is always an array
if (!Array.isArray(approvalList)) {
	approvalList = [approvalList]; // Wrap the object in an array if it's not an array
	$.context.approverList.ApproverSet.Approver = approvalList;
}

// Increment the current level
$.context.currentLevel++;
var currentLevel = parseInt($.context.currentLevel, 10);

// Filter the approval list to only include approvers whose 'Level' matches the current level
var filteredApprovers = approvalList.filter(function (approver) {
	return parseInt(approver.Level, 10) === currentLevel;
});

// Update the approval list in the context to the filtered list
// $.context.approverList.ApproverSet.Approver = filteredApprovers;

// Check if the filtered list is empty or the last decision in usertask2 was 'reject'
if (filteredApprovers.length === 0) {
	// Check if there are no available approvers in higher levels
	var higherLevelApproversExist = approvalList.some(function (approver) {
		return parseInt(approver.Level, 10) > currentLevel;
	});

	if (!higherLevelApproversExist) {
		// No available approvers in higher levels
		$.context.isApprovedComplete = true;
		$.context.getHigherLevelApprover = false;
	} else {
		// There are available approvers in higher levels
		$.context.isApprovedComplete = false;
		$.context.getHigherLevelApprover = true;
	}
} else {
	$.context.currentApprover = filteredApprovers[0];

	$.context.employeePosition = filteredApprovers[0].EmpPosition;
	$.context.employeeOrganizationDesc = filteredApprovers[0].EmpOrgName;
	$.context.employeeOrganizationId = filteredApprovers[0].EmpOrg;
	$.context.gradeLevel = filteredApprovers[0].GradeLevel;
	$.context.employeeMail = filteredApprovers[0].EmpEmail;

	$.context.isApprovedComplete = false;
	$.context.getHigherLevelApprover = false;

	var userIds = [];
	var agentEmails = [];

	filteredApprovers.forEach(function (approver) {
		if (approver.UserID) {
			userIds.push(approver.UserID);
		}

		if (approver.AgentEmail) {
			agentEmails.push(approver.AgentEmail);
		}
	});

	userIds = userIds.concat($.context.defaultApprover.reduce(function (a, b) {
		return a.concat(b);
	}, []));

	agentEmails = agentEmails.concat($.context.defaultAgentEmails.reduce(function (a, b) {
		return a.concat(b);
	}, []));

	if ($.context.isRejected) {
		$.context.isApprovedComplete = true;
		$.context.getHigherLevelApprover = false;
	}

	$.context.currentLevelDesc = String(currentLevel);
	$.context.filteredApprovers = filteredApprovers;

	$.context.userIdsArray = userIds;
	$.context.agentEmailsArray = agentEmails;
	// set mail
	// Filter the approvers to remove those with empty or undefined AgentEmail
	// valid mail 
	var validMailApprovers = [];
	for (var i = 0; i < filteredApprovers.length; i++) {
		if (filteredApprovers[i].AgentEmail && filteredApprovers[i].AgentEmail.trim() !== "" && filteredApprovers[i].AgentEmail.length > 4) {
			validMailApprovers.push(filteredApprovers[i]);
		}
	}

//adding training Coordinator 
	var trainingCoordinator = approvalList.filter(function (approver) {
		return parseInt(approver.Level, 10) === 4;
	});

	// Assign the filtered approvers to the context
	$.context.MailfilteredApprovers = validMailApprovers;
	$.context.MailfilteredApprovers = $.context.MailfilteredApprovers.concat(trainingCoordinator);
	
	$.context.MailfilteredApproversTest =  	$.context.MailfilteredApprovers;
	// Create a list of remaining approvers with unique PositionName and Level greater than currentLevel
	var remainApprovers = approvalList.filter(function (approver) {
		return parseInt(approver.Level, 10) > currentLevel;
	});

	// Create a unique list based on PositionName and Level
	var uniqueRemainApprovers = {};
	for (var i = 0; i < remainApprovers.length; i++) {
		var key = remainApprovers[i].PositionName + '-' + remainApprovers[i].Level;
		if (!uniqueRemainApprovers[key]) {
			uniqueRemainApprovers[key] = remainApprovers[i];
		}
	}

	// Convert the unique remain approvers back to an array
	var remainApproversArray = Object.keys(uniqueRemainApprovers).map(function (key) {
		return uniqueRemainApprovers[key];
	});

	// Assign the unique remain approvers to the context
	$.context.RemainApprover = remainApproversArray;

	//check if it Training Coordiator 
	if (filteredApprovers && filteredApprovers.length > 0 && filteredApprovers[0].PositionName === "Training Co-ordinator") {
		$.context.isTrainingCoordinator = true;
	}

}