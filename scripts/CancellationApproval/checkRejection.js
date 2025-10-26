var approvalList = [];
var initiator = {
	UserID: $.context.initiatorEmail,
	Agent: $.context.initiatorEmail,
	AgentName: $.context.initiatorEmail,
	AgentEmail: $.context.initiatorEmail,
	PositionName: "initiator Position",
	OrgName: "initiator Organization"
};

// Check the decision and set isRejected flag

if ($.usertasks.usertask2.last.decision === "reject") {
	$.context.isRejected = true;
	$.context.DecisionText = "Rejected";
	// add all approval list in case of rejection
	approvalList = $.context.approverList.ApproverSet.Approver;

} else {
	$.context.DecisionText = "Approved";
	$.context.isRejected = false;
}
// get Notfication List 

// approvalList.push(initiator);

// var validMailApprovers = [];
// for (var i = 0; i < approvalList.length; i++) {
// 	if (approvalList[i].AgentEmail && approvalList[i].AgentEmail.trim() !== "" && approvalList[i].AgentEmail.length > 4) {
// 		validMailApprovers.push(approvalList[i]);
// 	}
// }

// adding Notification list

var validMailApprovers = [];

if ($.context.isRejected) {
	var validMailApprovers = approvalList.filter(function (approver) {
		return parseInt(approver.Level, 10) === 3;
	});
}
validMailApprovers.push(initiator);



$.context.NotificationListMailsTest = validMailApprovers;
// Assign the filtered approvers to the context
$.context.MailfilteredApprovers = validMailApprovers;

//Finalize the workflow 

$.context.currentLevel = 99;

// Initialize the ApproverCommentList array if it doesn't exist
if (!$.context.ApproverCommentList) {
	$.context.ApproverCommentList = [];
}

// Read user task information for the current task
var currentUserTask = $.usertasks.usertask2.last; // Assuming usertask2 is the current task
var userId = currentUserTask.processor;
if ($.context.apiProccessor.length > 3) {
	userId = $.context.apiProccessor;
	$.context.apiProccessor = "";
}

var comment = $.context.ApproverComment; // Read from $.context.ApproverComment

// Search for the user in context.filteredApprovers
var approver = null;
for (var i = 0; i < $.context.filteredApprovers.length; i++) {
	if ($.context.filteredApprovers[i].UserID === userId) {
		approver = $.context.filteredApprovers[i];
		break;
	}
}

var level = $.context.filteredApprovers[0].Level

// Default user information in case approver is not found
var defaultApprover = {
	UserID: userId,
	Agent: userId,
	AgentName: userId,
	PositionName: "Default Position",
	OrgName: "Default Organization",
	level: level,
	timestamp: formatDateTime(new Date()),
	decision: $.context.DecisionText
};

// Use the found approver or the default approver
var approverDetails = approver || defaultApprover;

// Create a new comment object with approver details
var approverComment = {
	Agent: approverDetails.Agent,
	userId: approverDetails.UserID,
	agentName: approverDetails.AgentName,
	positionName: approverDetails.PositionName,
	orgName: approverDetails.OrgName,
	comment: comment,
	level: level,
	timestamp: formatDateTime(new Date()),
	decision: $.context.DecisionText

};

// Add the new comment object to the ApproverCommentList array
$.context.ApproverCommentList.push(approverComment);

$.context.lastApproverData = approverComment;

// Clear $.context.ApproverComment since it's being replaced by ApproverCommentList
$.context.ApproverComment = "";

// Function to format the date in "1 May 2023 at 4:49 pm" format
function formatDateTime(date) {
	var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
	var day = date.getDate();
	var month = months[date.getMonth()];
	var year = date.getFullYear();
	var hours = date.getHours();
	var minutes = date.getMinutes();
	var ampm = hours >= 12 ? 'pm' : 'am';
	hours = hours % 12;
	hours = hours ? hours : 12; // the hour '0' should be '12'
	minutes = minutes < 10 ? '0' + minutes : minutes;
	var strTime = hours + ':' + minutes + ' ' + ampm;
	return day + ' ' + month + ' ' + year + ' at ' + strTime;
}
// Process comments if needed

// Clear the ApproverCommentList array to be ready for the next step (if needed)
// $.context.ApproverCommentList = [];