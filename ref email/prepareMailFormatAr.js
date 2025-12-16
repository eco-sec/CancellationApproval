// Check if there are valid MailfilteredApprovers
var currentApproverInfoDetails = $.context.currentApproverInfo.EmployeeDetailsSet.EmployeeDetails;
if (!$.context.NoMoreMailApprover && currentApproverInfoDetails.Language === 'AR') {
	var currentApprover = $.context.currentApprover; //$.context.MailfilteredApprovers.shift();
	$.context.NoMoreMailApprover = false;
	// Shortened variable declarations
	var currentApproverAgentName = currentApproverInfoDetails.EmpArabicName, //currentApprover.AgentName,
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
	// Generate the English HTML content
	var footer = "<footer>" +
		"<p class='blue'>" +
		"إذا كان لديك أي استفسار حول الطلب، يُرجى فتح طلب آمر 'رقم الخدمة 62994' أو الاتصال على الرقم الموحد " +
		"للموارد البشرية 333. " +
		"</p>" +
		"<p class='blue'>مع تمنياتنا لكم بالتوفيق ،،</p><p class='blue'><strong>نشاط الموارد البشرية والخدمات المساندة<br>قطاع تطوير الموارد البشرية</strong></p>" +
"<p class='orange'>ملاحظة: تم ارسال هذا البريد تلقائياً عن طريق النظام الرجاء عدم الرد عليه.</p>" +
		"</div>" +
		"<div class='footer'><img " +
		"src='https://www.se.com.sa/stylelibrary/WeLearn_footer.jpg' " +
		"width='100%' alt='الشركة السعودية للكهرباء' /></div>" +
		"</footer>" +
		"</div>" +
		"</body>" +
		"</html>";
	var header =
		"<!DOCTYPE html><html lang='ar'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Approval Needed for Training Booking Request</title><style>@font-face{font-family:'GE SS';src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');font-weight:normal;font-style:normal;}" +
		"@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');.roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}" +
		".roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}.ltr{direction:ltr;}body{font-family:'GE SS',Arial,sans-serif;color:#000;margin:0;padding:0;direction:rtl;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:right;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}</style></head><body>" +
		"<div class='container'><div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn_Logo.jpg' width='100%' alt='الشركة السعودية للكهرباء'/></div>";
	// Arabic version of the email content
	var htmlContentAr =
		header +
		"<div class='content'><p class='text-center blue'><strong>عزيزي <span class='orange'>" + currentApproverAgentName +
		"</span>,</strong></p>" +
		"<p class='text-center blue'><strong>يرجى اعتماد طلب التدريب للموظف <span class='orange'>" + $.context.employeeInfo.EmpArabicName +
		"</span></strong></p>" +
		"<p class='text-center blue'>" +
    "<a href='" + $.context.approvalLink + "' target='_blank'>" +
        "رابط الموافقه" +
    "</a>" +
"</p>"+
		
		"<h4 class='text-center blue'>تفاصيل الطلب كالتالي:</h4><h4 class='text-center blue'>معلومات الموظف:</h4><table><tr><th class='blue'>رقم الموظف</th>" +
		"<th class='orange'>" + $.context.employeeInfo.EmpPernr + "</th></tr><tr><th class='blue'>اسم الموظف</th><th class='orange'>" + $.context
		.employeeInfo.EmpArabicName + "</th></tr>" +
		"<tr><th class='blue'>الدائرة</th><th class='orange'>" + $.context.employeeInfo.DivisionAr +
		"</th></tr><tr><th class='blue'>الإدارة</th>" +
		"<th class='orange'>" + $.context.employeeInfo.DepartmentAr + "</th></tr><tr><th class='blue'>القطاع</th><th class='orange'>" + $.context
		.employeeInfo.BusinessLineAr + "</th></tr>" +
		"<tr><th class='blue'>الجنسية</th><th class='orange'>" + $.context.employeeInfo.NationalityAr +
		"</th></tr><tr><th class='blue'>الدرجة الوظيفية</th>" +
		"<th class='orange'>" + $.context.employeeInfo.GradeCode + "</th></tr><tr><th class='blue'>المنطقة الفرعية</th><th class='orange'>" + $.context
		.employeeInfo.PerssubareaText + "</th></tr>" +
		"<tr><th class='blue'>موقع العمل</th><th class='orange'>" + $.context.employeeInfo.WlTextAr +
		"</th></tr><tr><th class='blue'>المنصب</th>" +
		"<th class='orange'>" + $.context.employeeInfo.PosTextAr + "</th></tr><tr><th class='blue'>تاريخ التوظيف</th><th class='orange'>" + $.context
		.employeeInfo.HiringDate + "</th></tr>" +
		"<tr><th class='blue'>المؤهل</th><th class='orange'>" + $.context.employeeInfo.QualAr +
		"</th></tr><tr><th class='blue'>البرنامج التطويري</th>" +
		"<th class='orange'>" + $.context.employeeInfo.DevProgAr + "</th></tr></table>" +
		//course info
		"<h4 class='text-center blue'>تفاصيل الدورة:</h4><table>" +
		"<tr><th class='blue'>عنوان الدورة</th><th class='orange'>" + $.context.classTitle + "</th></tr>" +
		// "<tr><th class='blue'>اسم الدورة (بالإنجليزية)</th><th class='orange'>" + $.context.itemTitleEn + "</th></tr>" +
		// "<tr><th class='blue'>اسم الدورة (بالعربية)</th><th class='orange'>" + $.context.itemTitleAr + "</th></tr>" +
		"<tr><th class='blue'>من</th>" + "<th class='orange'>" + $.context.classStartDateDescAr + "</th></tr>" +
		"<tr><th class='blue'>إلى</th><th class='orange'>" + $.context.classEndDateDescAr + "</th></tr>" +
		"<tr><th class='blue'>نوع الدورة</th><th class='orange'>" + $.context.trainingTypeDesc + "</th></tr>" +
		"<tr><th class='blue'>معرف الموقع</th>" + "<th class='orange'>" + $.context.facilityId + "</th></tr>" +
		"<tr><th class='blue'>موقع الدورة</th>" + "<th class='orange'>" + $.context.facilityDesc + "</th></tr>" +
		"<tr><th class='blue'>سعر الدورة</th><th class='orange'>" + $.context.classPrice + " " + $.context.classCurrency + "</th></tr>" +
		"</table>" +
		"<h4 class='text-center blue'>قائمة الموافقين:</h4><table cellspacing='0' cellpadding='10'><thead><tr><th class='text-center blue'>الموافقين</th>" +
		"<th class='text-center blue'>الهوية</th><th class='text-center blue'>المنصب</th><th class='text-center blue'>التاريخ</th><th class='text-center blue'>الوقت</th></tr>" +
		"</thead><tbody>" + approverRows + "</tbody></table>" + footer;
	// Create the MailRequestBody JSON object
	var mailRequestBody = {
		"NotificationSet": {
			"Notifications": {
				"EmpNo": empNo,
				"Email": currentApproverMail,
				"TrainingType": parseInt($.context.trainingTypeId, 10),
				"Level": 1,
				"Subject": subject,
				"HtmlContent": htmlContentAr // Switch between htmlContent and htmlContentAr
			}
		}
	};
	// Write the MailRequestBody to the workflow context
	$.context.MailRequestBody = mailRequestBody;
}