// Check if there are valid MailfilteredApprovers
var currentApproverInfoDetails = $.context.currentApproverInfo.EmployeeDetailsSet.EmployeeDetails;
if (!$.context.NoMoreMailApprover && currentApproverInfoDetails.Language  !== 'AR') {
	var currentApprover =  $.context.currentApprover; // $.context.currentApprover.EmployeeDetailsSet.EmployeeDetails;; //$.context.MailfilteredApprovers.shift();
	$.context.NoMoreMailApprover = false;
	// Shortened variable declarations
	var currentApproverAgentName = currentApproverInfoDetails.EmpEnglishName, //currentApprover.AgentName,
	currentApproverMail = currentApprover.AgentEmail,
		empNo = $.context.employeeId,
		subject = "Level " + $.context.currentLevel + " Approval Required for " + $.context.employeeName;
	// Generate the approver rows dynamically
	var approverRows = ($.context.ApproverCommentList || []).map(function (approver) {
		var timestampParts = approver.timestamp.split(' at ');
		return "<tr><th class='text-center orange'>" + approver.agentName + "</th>" +
			"<th class='text-center orange'>" + approver.userId + "</th>" +
			"<th class='text-center orange'>" + approver.positionName + "</th>" +
			"<th class='text-center orange'>" + timestampParts[0] + "</th>" +
			"<th class='text-center orange'>" + timestampParts[1] + "</th></tr>";
	}).join('') || "<tr><td colspan='5' class='text-center orange'>No approvers yet.</td></tr>";
	var header =
		"<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Approval Needed for Training Booking Request</title><style>@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');" +
		"@font-face{font-family:'GE SS';src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');font-weight:normal;font-style:normal;}" +
		".arabic{font-family:'GE SS';}.roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}" +
		".roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}body{font-family:'Roboto',sans-serif;color:#000;margin:0;padding:0;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:left;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}" +
		"</style></head><body><div class='container'><div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn_Logo.jpg' width='100%' alt='Saudi Electricity Company'/></div>";
	var footer = "<footer><p class='blue text-center'>If you have any questions about the registration, please create AMER request “service number 62994“ or contact us by Human Resource unified number 333. We wish you all the best.</p>" +
		"<p class='blue text-center'><strong>Human Resources & Corporate Services Business Line HR Development Sector</strong></p>" +
		"<p class='orange text-center'>Note: This email was sent automatically by the system, please do not reply to it.</p></div>" +
		"<div class='footer'><img src='https://www.se.com.sa/stylelibrary/WeLearn_footer.jpg' width='100%' alt='Saudi Electricity Company'/></div></footer></div></body></html>";
	// Generate the English HTML content
var htmlContentEn = header +
    "<div class='content'><p class='text-center blue'><strong>Dear <span class='orange'>" + currentApproverAgentName +
    "</span>,</strong></p>" +
    "<p class='text-center blue'><strong>Please approve the training request for <span class='orange'>" + $.context.employeeName +
    "</span></strong></p>" +
    
"<p class='text-center blue'>" +
    "<a href='" + $.context.approvalLink + "' target='_blank'>" +
        "Approval Link" +
    "</a>" +
"</p>"+
    // Employee info
    "<h4 class='text-center blue'>The details of the request are as follows:</h4><h4 class='text-center blue'>Employee Information:</h4><table>" +
    "<tr><th class='blue'>Badge No.</th><th class='orange'>" + $.context.employeeInfo.EmpPernr + "</th></tr>" +
    "<tr><th class='blue'>Name</th><th class='orange'>" + $.context.employeeInfo.EmpEnglishName + "</th></tr>" +
    "<tr><th class='blue'>Division</th><th class='orange'>" + $.context.employeeInfo.DivisionEn + "</th></tr>" +
    "<tr><th class='blue'>Department</th><th class='orange'>" + $.context.employeeInfo.DepartmentEn + "</th></tr>" +
    "<tr><th class='blue'>Business Line</th><th class='orange'>" + $.context.employeeInfo.BusinessLineEn + "</th></tr>" +
    "<tr><th class='blue'>Nationality</th><th class='orange'>" + $.context.employeeInfo.NationalityEn + "</th></tr>" +
    "<tr><th class='blue'>Grade Code</th><th class='orange'>" + $.context.employeeInfo.GradeCode + "</th></tr>" +
    "<tr><th class='blue'>Personnel Subarea</th><th class='orange'>" + $.context.employeeInfo.PerssubareaText + "</th></tr>" +
    "<tr><th class='blue'>Work Location</th><th class='orange'>" + $.context.employeeInfo.WlTextEn + "</th></tr>" +
    "<tr><th class='blue'>Position</th><th class='orange'>" + $.context.employeeInfo.PosTextEn + "</th></tr>" +
    "<tr><th class='blue'>Hiring Date</th><th class='orange'>" + $.context.employeeInfo.HiringDate + "</th></tr>" +
    "<tr><th class='blue'>Qualification</th><th class='orange'>" + $.context.employeeInfo.QualEn + "</th></tr>" +
    "<tr><th class='blue'>Development Program</th><th class='orange'>" + $.context.employeeInfo.DevProgEn + "</th></tr></table>" +
    // Course details
    "<h4 class='text-center blue'>Course Details:</h4><table>" +
        "<tr><th class='blue'>Class ID</th><th class='orange'>" + $.context.classId + "</th></tr>" +
    "<tr><th class='blue'>Class Name</th><th class='orange'>" + $.context.classTitle + "</th></tr>" +
    // "<tr><th class='blue'>Course Name in English</th><th class='orange'>" + $.context.itemTitleEn + "</th></tr>" +
    // "<tr><th class='blue'>Course Name in Arabic</th><th class='orange'>" + $.context.itemTitleAr + "</th></tr>" +
    "<tr><th class='blue'>Start Date</th><th class='orange'>" + $.context.classStartDateDesc + "</th></tr>" +
    "<tr><th class='blue'>End Date</th><th class='orange'>" + $.context.classEndDateDesc + "</th></tr>" +
    "<tr><th class='blue'>Course Type</th><th class='orange'>" + $.context.trainingTypeDesc + "</th></tr>" +
    "<tr><th class='blue'>Location ID</th><th class='orange'>" + $.context.facilityId + "</th></tr>" +
    "<tr><th class='blue'>Location Description</th><th class='orange'>" + $.context.facilityDesc + "</th></tr>" +
    "<tr><th class='blue'>Course Price</th><th class='orange'>" + $.context.classPrice + " " + $.context.classCurrency +
    "</th></tr></table>" +
    // Approval list
    "<h4 class='text-center blue'>Approver List:</h4><table cellspacing='0' cellpadding='10'><thead><tr>" +
    "<th class='text-center blue'>Already approved by</th><th class='text-center blue'>ID</th><th class='text-center blue'>Position</th>" +
    "<th class='text-center blue'>Date</th><th class='text-center blue'>Time</th></tr></thead><tbody>" + approverRows +
    "</tbody></table>" + 
    footer;
	// "<p class='blue'>If you have any questions about the registration, please create AMER request “service number 62994” or contact us by Human Resource unified number 333. We wish you all the best.</p>" +
	// "<p class='orange'>Note: This email was sent automatically by the system, please do not reply to it.</p></div>" +
	// "<div class='footer'><img src='https://www.se.com.sa/stylelibrary/WeLearn_footer.jpg' width='100%' alt='Saudi Electricity Company'/></div></div></body></html>";
	// Create the MailRequestBody JSON object
	var mailRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": currentApproverMail,
				"TrainingType": parseInt($.context.trainingTypeId, 10),
				"Level": 1,
				"Subject": subject,
				"HtmlContent": htmlContentEn // Switch between htmlContent and htmlContentAr
			}
		}
	};
	// Write the MailRequestBody to the workflow context
	$.context.MailRequestBody = mailRequestBody;
}