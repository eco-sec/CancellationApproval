// Check if currentApprover is defined and has data
if (!$.context.MailfilteredApprovers || $.context.MailfilteredApprovers.length === 0 ||
	!$.context.MailfilteredApprovers[0] || !$.context.MailfilteredApprovers[0].AgentName || !$.context.MailfilteredApprovers[0].Agent) {
	$.context.NoMoreMailApprover = true;
} else {

	// Get the current approver and remove it from the list
	var currentApprover = $.context.MailfilteredApprovers.shift();

	var approverDepartmentTitle;
	if (currentApprover.Level === "2") {
		approverDepartmentTitle = "Investigation Department";
	} else if (currentApprover.Level === "3") {
		approverDepartmentTitle = "Training Coordinator Department";
	} else {
		approverDepartmentTitle = "Notification";
	}

	$.context.NoMoreMailApprover = false;

	var currentApproverMail = currentApprover.AgentEmail;
	var empNo = $.context.employeeId;

	var decisionStatus, subject, decisionMessage;
	if ($.context.isRejected) {
		decisionStatus = "Rejected";
		subject = "We Learn – Training Cancellation Request Rejection for " + $.context.employeeName;
		decisionMessage = "The training cancellation request has been <span class='orange'>rejected</span> by Department Manager";
	} else {
		decisionStatus = "Approved";
		subject = "We Learn – Training Cancellation Request Notification for " + $.context.employeeName;
		decisionMessage = "The training cancellation request has been <span class='orange'>approved</span> by Department Manager";
	}

	var header =
		"<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Training Cancellation Notification</title><style>@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');" +
		"@font-face{font-family:'GE SS';src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');font-weight:normal;font-style:normal;}" +
		".arabic{font-family:'GE SS';}.roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}" +
		".roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}body{font-family:'Roboto',sans-serif;color:#000;margin:0;padding:0;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:left;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}" +
		".header img,.footer img{width:100%;display:block;max-width:100%;height:auto}" +
		"</style></head><body><div class='container'><div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn/WeLearnEnglishHeader.png' alt='Saudi Electricity Company'/></div>";

	var footer = "<footer><p class='blue text-center'>If you have any questions about this notification, please create AMER request &quot;service number 62994&quot; or contact us by Human Resource unified number 333.</p>" +
		"<p class='blue text-center'><strong>Human Resources & Corporate Services Business Line<br>HR Development Sector</strong></p>" +
		"<p class='orange text-center'>Note: This email was sent automatically by the system, please do not reply to it.</p></div>" +
		"<div class='footer'><img src='https://www.se.com.sa/stylelibrary/WeLearn/WeLearnFooter.png' alt='Saudi Electricity Company'/></div></footer></div></body></html>";

	var htmlContentEn = header +
		"<div class='content'><p class='text-center blue'><strong>Dear " + approverDepartmentTitle + ",</strong></p>" +
		"<p class='text-center blue'>" + decisionMessage + "</p>" +

		"<h4 class='text-center blue'>Manager Decision Details:</h4><table>" +
		"<tr><th class='blue'>Manager Badge Number</th><th class='orange'>" + $.context.lastApproverData.Agent + "</th></tr>" +
		"<tr><th class='blue'>Manager Name</th><th class='orange'>" + $.context.lastApproverData.agentName + "</th></tr>" +
		"<tr><th class='blue'>Manager Position</th><th class='orange'>" + $.context.lastApproverData.positionName + "</th></tr>" +
		"<tr><th class='blue'>Comments</th><th class='orange'>" + $.context.lastApproverData.comment + "</th></tr>" +
		"<tr><th class='blue'>Decision Status</th><th class='orange'>" + decisionStatus + "</th></tr></table>" +

		"<h4 class='text-center blue'>Employee Information:</h4><table>" +
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

		"<h4 class='text-center blue'>Training Event Details (Cancellation Request):</h4><table>" +
		"<tr><th class='blue'>Class ID</th><th class='orange'>" + $.context.classId + "</th></tr>" +
		"<tr><th class='blue'>Class Name</th><th class='orange'>" + $.context.classTitle + "</th></tr>" +
		"<tr><th class='blue'>Start Date</th><th class='orange'>" + $.context.classStartDateDesc + "</th></tr>" +
		"<tr><th class='blue'>End Date</th><th class='orange'>" + $.context.classEndDateDesc + "</th></tr>" +
		"<tr><th class='blue'>Location ID</th><th class='orange'>" + $.context.facilityId + "</th></tr>" +
		"<tr><th class='blue'>Location Description</th><th class='orange'>" + $.context.facilityDesc + "</th></tr>" +
		"<tr><th class='blue'>Course Price</th><th class='orange'>" + $.context.classPrice + " " + $.context.classCurrency + "</th></tr></table></div>" +
		footer;

	// Create the MailRequestBody JSON object
	var MailNotificationRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": currentApproverMail,
				"TrainingType": parseInt($.context.trainingTypeId, 10),
				"Level": 1,
				"Subject": subject,
				"HtmlContent": htmlContentEn
			}
		}
	};

	// Write the MailRequestBody to the workflow context
	$.context.MailNotificationRequestBody = MailNotificationRequestBody;
}