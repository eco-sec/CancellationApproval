// Get the current approver and remove it from the list

var pendingStepsNamesEn = "";
var pendingStepsNamesAr = "";
$.context.NoMoreMailApprover = false;

var pendingStepsNames = $.context.RemainApprover.map(function (approver, index) {
	return (index + 1) + "- " + approver.PositionName;
}).join('<br>');

if ($.context.RemainApprover.length > 0) {
	pendingStepsNamesEn =
		"<p>Please note that this activity must still be approved at the following steps before access to the activity is allowed.</p>" +
		"<p>" + pendingStepsNames + "</p>";

	pendingStepsNamesAr = "<p> يُرجى العلم أنه يجب اعتماد هذا الطلب في الخطوات التالية:<br><br></p>" +
		"<p>" + pendingStepsNames + "</p>";
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
var subject = "Approval Process progress for " + classTitle;

var requesterComments = $.context.lastApproverData.comment;
var stepsApproved = $.context.lastApproverData.positionName + " Approval Level No " + level;
var previousStepApprover = $.context.lastApproverData.positionName + "-" + $.context.lastApproverData.userId + "-" + $.context.lastApproverData
	.agentName;

var htmlContent = "<!DOCTYPE html>" +
	"<html>" +
	"<head>" +
	"<title>Template Desc Notify approver of action required</title>" +
	"<link rel='preconnect' href='https://fonts.googleapis.com'>" +
	"<link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>" +
	"<link href='https://fonts.googleapis.com/css2?family=Tajawal:wght@500;700&display=swap' rel='stylesheet'>" +
	"<style>" +
	"body {font-family: 'Tajawal', sans-serif; line-height: 1.6; font-weight: 500; color: #000; background-color: #f4f4f4; margin: 0; padding: 0;}" +
	"table {width: 100%; max-width: 1200px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 10px; border-collapse: collapse;}" +
	"h3 {color: #ff7300; font-size: 24px; margin-top: 0;}" +
	"p {color: #000; font-size: 16px;}" +
	"td {padding: 10px; text-align: start;}" +
	".important {color: white; font-weight: bold; background-color: #ff7300; padding: 5px; border-radius: 4px;}" +
	"dl {display: flex; gap: 14px;}" +
	".title {font-weight: 500;}" +
	"dt {font-weight: 700;}" +
	".no-style {list-style: none;}" +
	".logo {text-align: center;}" +
	".en-table {border-top: 2px solid rgba(0, 0, 0, 0.10);}" +
	".columns {display: flex; justify-content: space-between; align-items: start;}" +
	".column {width: 48%;}" +
	"</style>" +
	"</head>" +
	"<body>" +
	"<table border='0' cellspacing='0' cellpadding='0'>" +
	"<tr>" +
	"<td colspan='2' class='logo'>" +
	"<img src='https://firebasestorage.googleapis.com/v0/b/bau-website-1c93b.appspot.com/o/logo.png?alt=media&token=ced57473-6013-495d-8039-4e9477bbf17c' alt='logo' style='max-width: 100%;'>" +
	"</td>" +
	"</tr>" +
	"<tr>" +
	"<td colspan='2'>" +
	"<div class='columns'>" +
	"<div class='column' dir='ltr'>" +
	"<h3>Dear,</h3>" +
	"<p>" + employeeName + " - " + employeeId + "</p>" +
	"<p>This note is to confirm that the following activity has progressed toward approval.</p>" +
	"<dl>" +
	"<dt>Approval type:</dt>" +
	"<dt class='title'>" + trainingTypeDesc + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>Program Name:</dt>" +
	"<dt class='title'>" + classTitle + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>Start Date/Time:</dt>" +
	"<dt class='title'>" + classStartDate + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>End Date/Time:</dt>" +
	"<dt class='title'>" + classEndDate + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>Approved Step :</dt>" +
	"<dt class='title'>" + stepsApproved + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>Approved by:</dt>" +
	"<dt class='title'>" + previousStepApprover + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>Comments:</dt>" +
	"<dt class='title'>" + requesterComments + "</dt>" +
	"</dl>" +
	pendingStepsNamesEn +
	"<p>If you have any questions about the approval process, please contact your learning coordinator.  </p>" +
	"<p>&nbsp;</p>" +

	"<p class='important'>Important Instructions:</p>" +

	"<ol>" +
	"<li>If the course location is Inside or Outside the Kingdom of Saudi Arabia (Organizer of business event: Out of company), Please start to create a travel request (Training Assignment) and approved from all authority levels. Then will contacting with the organizer to book a seat and inform you to attend the business event.</li>" +
	"<li>Please do not start to reserve the hotel and flight booking until receive the final confirmation from the Central Registration Employee.</li>" +
	"</ol>" +
	"<p class='important'>Cancellation Policy:</p>" +
	"<ol class='no-style'>" +
	"<li>You should cancel your booking immediately if you cannot attend. This will give a chance for others to attend.</li>" +
	"<li>If you do not cancel your booking, you may be liable for legal consequences and the Cost of the Course will be deducted from you as per the Saudi Electricity Company Policy.</li>" +
	"</ol>" +
	"</div>" +
	"<div class='column' dir='rtl'>" +
	"<h3>مرحبا بك:</h3>" +
	"<p>" + employeeName + " - " + employeeId + "</p>" +
	"<p>الغرض من هذه الرسالة هو إطلاعك على حالة الطلب الخاصة بالبرنامج التدريبي التالي:</p>" +
	"<dl>" +
	"<dt>نوع الطلب:</dt>" +
	"<dt class='title'>" + trainingTypeDesc + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>اسم البرنامج:</dt>" +
	"<dt class='title'>" + classTitle + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>تاريخ/وقت البدء:</dt>" +
	"<dt class='title'>" + classStartDateAr + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>تاريخ/وقت الانتهاء:</dt>" +
	"<dt class='title'>" + classEndDateAr + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>خطوة الاعتماد:</dt>" +
	"<dt class='title'>" + stepsApproved + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>اعتمدت من:</dt>" +
	"<dt class='title'>" + previousStepApprover + "</dt>" +
	"</dl>" +
	"<dl>" +
	"<dt>تعليقات:</dt>" +
	"<dt class='title'>" + requesterComments + "</dt>" +
	"</dl>" +
	pendingStepsNamesAr +
	"<p>إذا كانت لديك أي أسئلة حول عملية الاعتماد، فيُرجى الاتصال بمسئول التدريب.<br> <br></p>" +
	"<p>وتقبلوا خالص الشكر والإحترام...</p>" +
	"<p class='important'>إرشادات مهمة:</p>" +
	"<ol>" +
	"<li>في حال أن موقع الدورة داخل او خارج المملكة العربية السعودية (الجهة المنظمة للحدث التدريبي: خارج الشركة) يرجى البدء بإنشاء طلب مهمة السفر (كمهمة تدريب) واعتمادها من جميع أصحاب الصلاحية لديكم. بعدها سيتم مخاطبة الجهة المنظمة لطلب حجز المقعد وابلاغكم نصياً بحضور الحدث التدريبي.<br><br></li>" +
	"<li>يرجى عدم البدء بإجراءات حجز الفنادق والطيران حتى حصولكم على التأكيد النهائي النصي من موظف التسجيل المركزي.</li>" +
	"</ol>" +
	"<p class='important'>سياسة الإلغاء:</p>" +
	"<ol class='no-style'>" +
	"<li>في حال عدم قدرتك على حضور البرنامج التدريبي فيجب عليك القيام فوراً بالالغاء لإتاحة الفرصة لغيرك من الموظفين.</li>" +
	"<li>لكي لا تكون عرضة للعقوبة والمسائلة القانونية وخصم التكاليف حسب لوائح وانظمة الشركة السعودية للكهرباء.</li>" +
	"</ol>" +
	"</div>" +
	"</div>" +
	"</td>" +
	"</tr>" +
	"</table>" +
	"</body>" +
	"</html>";

// Create the MailRequestBody JSON object
var mailRequestBody = {
	"NotificationSet": {
		"Notifications": {
			"EmpNo": empNo,
			"Email": employeeMail,
			"TrainingType": parseInt(trainingType, 10),
			"Level": 1, //parseInt(level,10),
			"Subject": subject,
			"HtmlContent": htmlContent
		}
	}
};

// Write the MailRequestBody to the workflow context
$.context.MailInitiatorRequestBody = mailRequestBody;