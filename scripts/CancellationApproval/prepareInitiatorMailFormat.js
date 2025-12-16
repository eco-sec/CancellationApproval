// Get the current approver and remove it from the list
if ($.context.employeeInfo.Language !== 'AR') {
	$.context.NoMoreMailApprover = false;

	// Check if the approver list exists and has elements
	var lastDecisionBy = "";
	if ($.context.ApproverCommentList && $.context.ApproverCommentList.length > 0) {
		lastDecisionBy = $.context.ApproverCommentList[$.context.ApproverCommentList.length - 1].agentName;
	}

	var decisionText = "";
	var subject = "";

	if ($.context.isApprovedComplete && !$.context.isRejected) {
		decisionText =
			"<p class='text-center blue'><strong>The training cancellation request has been <span class='orange'>approved</span> and processed successfully.</strong></p>";
		subject = "We Learn – Training Cancellation Request Approved"
	} else if ($.context.isRejected) {
		decisionText =
			"<p class='text-center blue'><strong>The training cancellation request has been <span class='orange'>rejected</span> by <span class='orange'>" +
			lastDecisionBy +
			"</span>.</strong></p>";
		subject = "We Learn – Training Cancellation Request Rejected"
	} else {
		decisionText =
			"<p class='text-center blue'><strong>Your training cancellation request is in progress. Approval Level " + $.context.currentLevel + " has been completed.</strong></p>";
		subject = "We Learn – Training Cancellation Request Progress Update"
	}

	var employeeName = $.context.employeeName;
	var employeeId = $.context.employeeId;
	var classTitle = $.context.classTitle;
	var employeeMail = $.context.employeeMail;

	// Construct the HTML content
	var empNo = $.context.employeeId;

	var header =
		"<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Training Cancellation Request Update</title><style>@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');" +
		"@font-face{font-family:'GE SS';src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');font-weight:normal;font-style:normal;}" +
		".arabic{font-family:'GE SS';}.roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}" +
		".roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}body{font-family:'Roboto',sans-serif;color:#000;margin:0;padding:0;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:left;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}" +
		".header img,.footer img{width:100%;display:block;max-width:100%;height:auto}" +
		"</style></head><body><div class='container'><div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn/WeLearnEnglishHeader.png' alt='Saudi Electricity Company'/></div>";

	var footer = "<footer><p class='blue text-center'>If you have any questions about this request, please create AMER request &quot;service number 62994&quot; or contact us by Human Resource unified number 333.</p>" +
		"<p class='blue text-center'><strong>Human Resources & Corporate Services Business Line<br>HR Development Sector</strong></p>" +
		"<p class='orange text-center'>Note: This email was sent automatically by the system, please do not reply to it.</p></div>" +
		"<div class='footer'><img src='https://www.se.com.sa/stylelibrary/WeLearn/WeLearnFooter.png' alt='Saudi Electricity Company'/></div></footer></div></body></html>";

	var htmlContentEn = header +
		"<div class='content'><p class='text-center blue'><strong>Dear <span class='orange'>" + employeeName +
		"</span>,</strong></p>" +
		decisionText +

		"<h4 class='text-center blue'>The details of the request are as follows:</h4><h4 class='text-center blue'>Employee Information:</h4><table>" +
		"<tr><th class='blue'>Badge No.</th><th class='orange'>" + employeeId + "</th></tr>" +
		"<tr><th class='blue'>Employee Name</th><th class='orange'>" + employeeName + "</th></tr>" +
		"<tr><th class='blue'>Job Title</th><th class='orange'>" + ($.context.jobTitle || "") + "</th></tr>" +
		"<tr><th class='blue'>Grade</th><th class='orange'>" + ($.context.gradeLevel || "") + "</th></tr>" +
		"<tr><th class='blue'>Organization</th><th class='orange'>" + ($.context.employeeOrganizationId || "") + "</th></tr></table>" +

		"<h4 class='text-center blue'>Training Event Details (Cancellation Request):</h4><table>" +
		"<tr><th class='blue'>Class ID</th><th class='orange'>" + $.context.classId + "</th></tr>" +
		"<tr><th class='blue'>Class Title</th><th class='orange'>" + classTitle + "</th></tr>" +
		"<tr><th class='blue'>Start Date</th><th class='orange'>" + ($.context.classStartDateDesc || $.context.classStartDate) + "</th></tr>" +
		"<tr><th class='blue'>End Date</th><th class='orange'>" + ($.context.classEndDateDesc || $.context.classEndDate) + "</th></tr>" +
		"<tr><th class='blue'>Duration</th><th class='orange'>" + ($.context.classTotalDays || "") + " days</th></tr>" +
		"<tr><th class='blue'>Request Type</th><th class='orange'>Training Cancellation</th></tr>" +
		"<tr><th class='blue'>Country</th><th class='orange'>" + ($.context.country || "") + "</th></tr>" +
		"<tr><th class='blue'>City</th><th class='orange'>" + ($.context.city || "") + "</th></tr>" +
		"<tr><th class='blue'>Training Center</th><th class='orange'>" + ($.context.trainingCenterName || "") + "</th></tr>" +
		"<tr><th class='blue'>Price</th><th class='orange'>" + ($.context.price || "") + " " + ($.context.currency || "") + "</th></tr></table></div>" +
		footer;

	// Create the MailRequestBody JSON object
	var mailRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": employeeMail,
				"TrainingType": parseInt($.context.trainingTypeId, 10),
				"Level": 1,
				"Subject": subject,
				"HtmlContent": htmlContentEn
			}
		}
	};

	// Write the MailRequestBody to the workflow context
	$.context.MailInitiatorRequestBody = mailRequestBody;
}