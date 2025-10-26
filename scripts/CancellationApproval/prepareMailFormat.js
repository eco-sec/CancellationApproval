// Check if currentApprover is defined and has data
// Check if there are any MailfilteredApprovers left or if the current approver data is invalid
if (!$.context.MailfilteredApprovers || $.context.MailfilteredApprovers.length === 0 ||
	!$.context.MailfilteredApprovers[0] || !$.context.MailfilteredApprovers[0].AgentName || !$.context.MailfilteredApprovers[0].Agent) {
	$.context.NoMoreMailApprover = true;
	//  return; // Exit if no approvers left or current approver data is invalid
} else {

	// Get the current approver and remove it from the list
	var currentApprover = $.context.MailfilteredApprovers.shift();

	$.context.NoMoreMailApprover = false;

	var currentApproverAgentName = currentApprover.AgentName;
	var currentApproverAgent = currentApprover.Agent;
	var currentApproverMail = currentApprover.AgentEmail;
	var trainingTypeDesc = $.context.trainingTypeDesc;
	var classTitle = $.context.classTitle;
	var classStartDate = $.context.classStartDateDesc;
	var classEndDate = $.context.classEndDateDesc;
	var classStartDateAr = $.context.classStartDateDescAr;
	var classEndDateAr = $.context.classEndDateDescAr;
	var currentLevelDesc = $.context.currentLevel;
	var link =
		"https://flpnwc-p6lg1ba5nh.dispatcher.sa1.hana.ondemand.com/sites?siteId=a0f37b2b-c361-40dd-991a-2f8d130fa69d#WorkflowTask-DisplayMyInbox&/detail/NA/97817543-268e-11ef-9baf-fa163e8cf11f/TaskCollection(SAP__Origin='NA',InstanceID='97817543-268e-11ef-9baf-fa163e8cf11f')";

	// Construct the HTML content
	var empNo = $.context.employeeId;
	var trainingType = parseInt($.context.trainingTypeId, 10); // Parse trainingTypeId as an integer
	var level = parseInt($.context.currentLevel, 10); // Parse level as an integer
	var subject = "No Show Approval Request for " + $.context.employeeName;


var htmlContent =
		"<!DOCTYPE html>" +
		"<html lang='en'>" +
		"<head>" +
		"<meta charset='UTF-8'>" +
		"<meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>Email Template</title>" +
		"<style>" +
		"body {" +
		"font-family: Arial, sans-serif;" +
		"color: #000;" +
		"margin: 0;" +
		"padding: 0;" +
		"}" +
		".container {" +
		"width: 100%;" +
		"max-width: 600px;" +
		"margin: 0 auto;" +
		"border: 1px solid #000;" +
		"}" +
		".header, .footer {" +
		"text-align: center;" +
		"padding: 10px;" +
		"}" +
		".content {" +
		"padding: 20px;" +
		"}" +
		"table {" +
		"width: 100%;" +
		"border-collapse: collapse;" +
		"margin-bottom: 20px;" +
		"}" +
		"table, th, td {" +
		"border: 1px solid #000;" +
		"}" +
		"th, td {" +
		"padding: 10px;" +
		"text-align: left;" +
		"}" +
		".note {" +
		"font-size: 12px;" +
		"color: #666;" +
		"}" +
		"h4 {" +
		"margin-bottom: 0.5rem;" +
		"}" +
		"</style>" +
		"</head>" +
		"<body>" +
		"<div class='container'>" +
		"<div class='header'>" +
		"<img src='https://www.se.com.sa/dist/browser/assets/images/sec-logo-new.png' width='200' alt='Saudi Electricity Company' />" +
		"</div>" +
		"<div class='content'>" +
		"<p><strong>Notification for the Absence of an Employee from a Business Event as per the below details:</strong></p>" +
		"<h4>Employee Information:</h4>" +
		"<table>" +
		"<tr>" +
		"<td>Badge No.</td>" +
		"<td>" + $.context.employeeId + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Attendee Name</td>" +
		"<td>" + $.context.employeeName + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Job Title</td>" +
		"<td>" + $.context.jobTitle + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Cost Center</td>" +
		"<td>" + $.context.employeeInfo.costCenter + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Personnel Subarea</td>" +
		"<td>" + $.context.empWorkLocationDesc + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Department</td>" +
		"<td>" + $.context.empDepartmentId + "</td>" +
		"</tr>" +
		"</table>" +
		"<h4>Business Event Information:</h4>" +
		"<table>" +
		"<tr>" +
		"<td>Business Event Number</td>" +
		"<td>" +  $.context.classId + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Business Event</td>" +
		"<td>" + $.context.classTitle + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Begin Date</td>" +
		"<td>" + classStartDate + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>End Date</td>" +
		"<td>" + classEndDate + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Duration</td>" +
		"<td>" + $.context.classTotalDays + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Event Language</td>" +
		"<td>" + $.context.trainingLanguage + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Event Location</td>" +
		"<td>" + $.context.classLocationDesc + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Country</td>" +
		"<td>" + $.context.country + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Region</td>" +
		"<td>" + $.context.regionId + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>City</td>" +
		"<td>" + $.context.city + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Organizer Name</td>" +
		"<td>" + $.context.organizationDesc + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Price</td>" +
		"<td>" + $.context.price + "</td>" +
		"</tr>" +
		"<tr>" +
		"<td>Cancellation Reason</td>" +
		"<td>" +" - "+ "</td>" +
		"</tr>" +
		"</table>" +
		"<p class='note'>" +
		"<strong>Note:</strong> An employee not attending the course shall be liable for legal consequences and the course costs could be deducted from the employee as per Saudi Electricity Company policy: " +
		"<a href='https://secweb/Admin/activities/hr/FormsDocs/%D8%B6%D9%88%D8%A7%D8%A8%D8%B7%20%D8%A7%D9%84%D8%AA%D8%B1%D8%B4%D9%8A%D8%AD%20%D9%84%D9%84%D8%A8%D8%B1%D8%A7%D9%85%D8%AC%20%D8%A7%D9%84%D8%AA%D8%AF%D8%B1%D9%8A%D8%A8%D9%8A%D8%A9%20%D9%88%D8%A7%D9%84%D8%AA%D8%B7%D9%88%D9%8A%D8%B1%D9%8A%D8%A9%20%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1%D8%A9.pdf' target='_blank'>HR Policy on No-Show for Training</a>." +
		"</p>" +
		"</div>" +
		"<div class='footer'>" +
		"<p>Thanks and Regards<br>" +
		"Human Resources & Corporate Services</p>" +
		"<p class='note'>NOTE: THIS IS A SYSTEM GENERATED EMAIL. PLEASE DO NOT REPLY.</p>" +
		"</div>" +
		"</div>" +
		"</body>" +
		"</html>";
	// Create the MailRequestBody JSON object
	var mailRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": currentApproverMail,
				"TrainingType": parseInt(trainingType, 10),
				"Level": 1, //parseInt(level,10),
				"Subject": subject,
				"HtmlContent": htmlContent
			}
		}
	};

	// Write the MailRequestBody to the workflow context
	$.context.MailRequestBody = mailRequestBody;
}