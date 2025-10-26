

$.context.isApprovedComplete = false
$.context.currentLevel = 1
$.context.isRejected = false
$.context.trainingTypeId = "6";

$.context.employeeInfo.secDateEntry = formatDateEnYYYYMMDD($.context.employeeInfo.secDateEntry)
$.context.defaultApprover = ["nageswara","PWC_LMS","118171"]
$.context.DecisionText = "In Progress";
$.context.defaultAgentEmails = ["abdelrahman.elamin@gmail.com"]
   $.context.ApproverCommentList = [];


$.context.workflowInstanceId = $.info.workflowInstanceId;
$.context.apiProccessor = "";

$.context.creationTime = new Date().toISOString();


$.context.classStartDateDesc = formatDateEn($.context.classStartDate);
$.context.classEndDateDesc = formatDateEn($.context.classEndDate);
$.context.classStartDateDescAr = formatDateAr($.context.classStartDate);
$.context.classEndDateDescAr = formatDateAr($.context.classEndDate);

$.context.LeaveRequestBody = {
  "TrainingBookingSet": {
    "TrainingBooking": {
      "EmpNo": $.context.employeeId,
      "TrainingType": "5500",
      "BeginDate": $.context.classStartDate,
      "EndDate": $.context.classEndDate,
       "StartTime":$.context.classStartTime,
        "EndTime": $.context.classEndTime,
      "Simulation": "X"
    }
  }
}


function formatDateEnYYYYMMDD(dateStr) {
    if (dateStr.length !== 8) {
        return 'Invalid date format';
    }

    var year = dateStr.substring(0, 4);
    var month = dateStr.substring(4, 6);
    var day = dateStr.substring(6, 8);

    if (isNaN(year) || isNaN(month) || isNaN(day)) {
        return 'Invalid date format';
    }

    var monthNames = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", "December"];

    var monthIndex = parseInt(month, 10) - 1;
    var monthName = monthNames[monthIndex];

    return parseInt(day) + ' ' + monthName + ' ' + year;
}


function formatDateEn(dateStr) {
    var parts = dateStr.split('/');
    if (parts.length !== 3) {
        return 'Invalid date or time format';
    }

    var day = parts[0];
    var month = parts[1];
    var year = parts[2];

    if (year.length !== 4 || month.length !== 2 || day.length !== 2) {
        return 'Invalid date or time format';
    }

    var monthNames = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", "December"];

    var monthIndex = parseInt(month, 10) - 1;
    var monthName = monthNames[monthIndex];

    return parseInt(day) + ' ' + monthName + ' ' + year;
}

function formatDateAr(dateStr) {
    var parts = dateStr.split('/');
    if (parts.length !== 3) {
        return 'Invalid date or time format';
    }

    var day = parts[0];
    var month = parts[1];
    var year = parts[2];

    if (year.length !== 4 || month.length !== 2 || day.length !== 2) {
        return 'Invalid date or time format';
    }

    var monthNames = ["يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو",
                      "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر"];

    var monthIndex = parseInt(month, 10) - 1;
    var monthName = monthNames[monthIndex];

    return parseInt(day) + ' ' + monthName + ' ' + year;
}



// Example usage


/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
