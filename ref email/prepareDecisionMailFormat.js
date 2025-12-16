// Get the current approver and remove it from the list
if ($.context.employeeInfo.Language !== 'AR') {
	var pendingStepsNamesEn = "";
	var pendingStepsNamesAr = "";
	$.context.NoMoreMailApprover = false;

	// Check if the approver list exists and has elements
	var lastDecisionBy = "";
	if ($.context.ApproverCommentList && $.context.ApproverCommentList.length > 0) {
		lastDecisionBy = $.context.ApproverCommentList[$.context.ApproverCommentList.length - 1].agentName;
	}

	var decisionText = "";
	var subject = "";

	if ($.context.approved) {
		decisionText =
			"<p class='text-center blue'><strong>This is to confirm your booking in the business event according to the below information.</strong></p>";
		subject = "We Learn – Training Booking Request Confirmation"
	} else if ($.context.classExpired) {
		decisionText =
			"<p class='text-center blue'><strong>The training booking request has been cancelled due to an incomplete approval process.</strong></p>";
		subject = "We Learn – Training Booking Request Cancellation"

	} else if ($.context.hasattendanceRequest) {
		decisionText =
			"<p class='text-center blue'><strong>The training booking request has been rejected due to time management conflict.</strong></p>";

		subject = "We Learn – Training Booking Request Rejection"
	} else {
		decisionText =
			"<p class='text-center blue'><strong>The Training booking request has been rejected by <span class='orange'>" +
			lastDecisionBy +
			"</span>.</strong></p>";

		subject = "We Learn – Training Booking Request Rejection"
	}

	var employeeName = $.context.employeeName;
	var employeeId = $.context.employeeId;
	var trainingTypeDesc = $.context.trainingTypeDesc;
	var classTitle = $.context.classTitle;
	var classStartDate = $.context.classStartDateDesc;
	var classEndDate = $.context.classEndDateDesc;
	var classStartDateAr = $.context.classStartDateDescAr;
	var classEndDateAr = $.context.classEndDateDescAr;
	var currentLevelDesc = $.context.currentLevel;
	var employeeMail = $.context.employeeMail;

	// Construct the HTML content
	var empNo = $.context.employeeId;
	var trainingType = parseInt($.context.trainingTypeId, 10); // Parse trainingTypeId as an integer
	var level = parseInt($.context.currentLevel, 10); // Parse level as an integer
	//var subject = "Approval Decision progress for " + classTitle;

	var header =
		"<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Training Booking Request Workflow Progress</title><style>@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');" +
		"@font-face{font-family:'GE SS';src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');font-weight:normal;font-style:normal;}" +
		".arabic{font-family:'GE SS';}.roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}" +
		".roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}body{font-family:'Roboto',sans-serif;color:#000;margin:0;padding:0;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:left;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}" +
		".bg-blue{background-color:#1e4691;color:white;padding-block:6px;}</style></head><body><div class='container'>" +
		"<div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn_Logo.jpg' width='100%' alt='Saudi Electricity Company'/></div>";

	var footerContent =
		"<footer><div class='footer'><p class='blue'>If you have any questions about the registration, please create AMER request “service number 62994“ or contact us by Human Resource unified number 333.</p>" +
		"<h4 class='text-center title bg-blue'>Important Instructions:</h4><ol class='blue'><li>If the course location is Inside or Outside the Kingdom of Saudi Arabia (Organizer of the business event: Out of company), then please start creating a travel request (Training Assignment) and obtain approval from all authority levels. Then we will contact the organizer to book a seat and inform you to attend the business event.</li>" +
		"<li>Please do not start reserving the hotel and flight booking until you receive final confirmation from the Registration Employee.</li></ol>" +
		"<h4 class='text-center bg-blue title'>Cancellation Policy:</h4><p class='blue'>You should cancel your booking immediately if you cannot attend. This will give a chance for others to attend. In order not be liable for legal consequences and cost deduction from you as per the Saudi Electricity Company Policy.</p>" +
		"<p class='blue'>We wish you all the best.</p><p class='blue'><strong>Human Resources & Corporate Services Business Line<br>HR Development Sector</strong></p>" +
		"<p class='orange'>Note: This email was sent automatically by the system, please do not reply to it.</p></div>" +
		"<img src='https://www.se.com.sa/stylelibrary/WeLearn_footer.jpg' width='100%' alt='Saudi Electricity Company'/></footer></div></body></html>";

	var htmlContentEn =
		header +

		"<div class='content'><p class='text-center blue'><strong>Dear <span class='orange'>" + $.context.employeeInfo.EmpEnglishName +
		"</span>,</strong></p>" +
		decisionText +

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
    "<tr><th class='blue'>Course Price</th><th class='orange'>" + $.context.classPrice + " " + $.context.classCurrency +"</th></tr>" +
	
		"</table></div>" +
		footerContent;
	// "<h4 class='text-center blue'>Approver List:</h4><table cellspacing='0' cellpadding='10'><thead><tr>" +
	// "<th class='text-center blue'>Already approved by</th><th class='text-center blue'>ID</th><th class='text-center blue'>Position</th>" +
	// "<th class='text-center blue'>Date</th><th class='text-center blue'>Time</th></tr></thead><tbody>" + approverRows +
	// "</tbody></table>" +

	;

	// Create the MailRequestBody JSON object
	var mailRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": employeeMail,
				"TrainingType": parseInt(trainingType, 10),
				"Level": 1, //parseInt(level,10),
				"Subject": subject,
				"HtmlContent": htmlContentEn
			}
		}
	};

	// Write the MailRequestBody to the workflow context
	$.context.MailDecisionRequestBody = mailRequestBody;
}