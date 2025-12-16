// Get the current approver and remove it from the list

if ($.context.employeeInfo.Language === 'AR') {
	var pendingStepsNamesEn = "";
	var pendingStepsNamesAr = "";
	$.context.NoMoreMailApprover = false;

	var decisionText = "";

	if ($.context.ApproverCommentList && $.context.ApproverCommentList.length > 0) {
		var lastDecisionBy = $.context.ApproverCommentList[$.context.ApproverCommentList.length - 1].agentName;
	}

	if ($.context.approved) {
		decisionText = "<p class='blue'><strong>نؤكد لك حجزك في الحدث التدريبي بناءً على المعلومات أدناه.</strong></p>";
	} else if ($.context.classExpired) {
		decisionText = "<p class='blue'><strong>تم إلغاء طلب حجز الدورة التدريبية نظراً لعدم اكتمال عملية الموافقات.</strong></p>";
	} else if ($.context.hasattendanceRequest) {
		decisionText = "<p class='blue'><strong>تم رفض طلب حجز الدورة التدريبية نظراً لتعارضها مع الوقت</strong></p>";
	} else if (lastDecisionBy) {
		decisionText = "<p class='blue'><strong>تم رفض طلب حجز التدريب من قبل <span class='orange'>" + lastDecisionBy + "</span>.</strong></p>";
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
	var subject = "Approval Process Decision for " + classTitle;

	var footer =
		"<footer><div class='footer'><p class='blue'>إذا كان لديك أي استفسار حول الطلب، يُرجى فتح طلب آمر 'رقم الخدمة 62994' أو الاتصال على الرقم الموحد للموارد البشرية 333.</p>" +
		"<h4 class='text-center title bg-blue'>إرشادات مهمة</h4><ol class='blue'><li>في حال أن موقع الدورة داخل او خارج المملكة العربية السعودية (الجهة المنظمة للحدث التدريبي: خارج الشركة) يرجى البدء بإنشاء طلب مهمة السفر (كمهمة تدريب) واعتمادها من جميع أصحاب الصلاحية لديكم، بعدها سيتم مخاطبة الجهة المنظمة لطلب حجز المقعد وابلاغكم نصياً بحضور الحدث التدريبي.</li>" +
		"<li>يرجى عدم البدء بإجراءات حجز الفنادق والطيران حتى يتم التأكيد النهائي من موظف التسجيل.</li></ol>" +
		"<h4 class='text-center title bg-blue'>سياسة الإلغاء</h4><p class='blue'>في حال عدم القدرة على حضور البرنامج التدريبي يجب عليك القيام فوراً بالإلغاء لإتاحة الفرصة للموظفين غيرك لكي لا تكون عرضة للعقوبة والمسائلة القانونية وخصم التكاليف حسب لوائح وانظمة الشركة السعودية للكهرباء.</p>" +
		"<p class='blue'>مع تمنياتنا لكم بالتوفيق ،،</p><p class='blue'><strong>نشاط الموارد البشرية والخدمات المساندة<br>قطاع تطوير الموارد البشرية</strong></p>" +
		"<p class='orange'>ملاحظة: تم ارسال هذا البريد تلقائياً عن طريق النظام الرجاء عدم الرد عليه.</p></div>" +
		"<img src='https://www.se.com.sa/stylelibrary/WeLearn_footer.jpg' width='100%' alt='Saudi Electricity Company'/></footer></div></body></html>";

	var header =
		"<!DOCTYPE html><html lang='ar'><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
		"<title>We Learn - Training Booking Request Workflow Progress</title><style>@font-face{font-family:'GE SS';" +
		"src:url('https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/alfont_com_GE-SS-Two-Medium.otf?alt=media&token=9d848eb1-0bd0-4bf1-8423-bc943911ef60') format('otf');" +
		"font-weight:normal;font-style:normal;}@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');" +
		".roboto-regular{font-family:'Roboto',sans-serif;font-weight:400;font-style:normal;}.roboto-medium{font-family:'Roboto',sans-serif;font-weight:500;font-style:normal;}" +
		".ltr{direction:ltr;}body{font-family:'GE SS',Arial,sans-serif;color:#000;margin:0;padding:0;direction:rtl;font-weight:500!important;}" +
		".container{width:100%;max-width:600px;margin:auto;border:1px solid #e5e5e5}.header,.footer{text-align:center}.content{padding:20px}" +
		"table{width:100%;border-collapse:collapse;margin-bottom:20px}th{border:1px solid #000;padding:10px;text-align:right;font-weight:500!important;}" +
		"h4,p{font-weight:500!important;}.text-center{text-align:center}.blue{color:#1e4691}.orange{color:#ED7D31}.bg-blue{background-color:#1e4691;color:white;padding-block:6px;}" +
		"</style></head><body><div class='container'><div class='header'><img src='https://www.se.com.sa/stylelibrary/WeLearn_Logo.jpg' width='100%' alt='الشركة السعودية للكهرباء'/></div>";

	var htmlContentAr = header +

		"<div class='content'><p class='text-center blue'><strong>عزيزي <span class='orange'>" + $.context.employeeInfo.EmpArabicName +
		"</span>,</strong></p>" +
		decisionText +
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

		"</table>" + footer;

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
				"HtmlContent": htmlContentAr
			}
		}
	};

	// Write the MailRequestBody to the workflow context
	$.context.MailDecisionRequestBody = mailRequestBody;
}