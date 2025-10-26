// Determine decision-related values
var isRejected = $.usertasks.usertask2.last.decision === "reject";

$.context.decisionText = isRejected ? "No Show Rejected" : "No Show Approved";
$.context.decisionValue = isRejected ? "REJECTED" : "APPROVED";
$.context.approved = !isRejected;
var enrollmentStatusID = isRejected ? "ENROLL-NO-SHOW-REJECTED" : "ENROLL-NO-SHOW-APPROVED";

// Define the LMS request body
$.context.LmsRequestBody = {
    "primaryKey": "",
    "enrollmentStatus": [{
        "scheduleID": Math.floor(parseInt($.context.classId)), // Convert to integer
        "userID": $.context.employeeId, // Employee ID
        "newEnrollmentStatusID": enrollmentStatusID,
        "cancellationReasonID": isRejected ? "Work Commitments" : "" // Only set for rejection
    }]
};

// Include context.cancellationCpiRequestBody
$.context.cancellationCpiRequestBody = {
    "EmpNo": $.context.employeeId,
    "classId": $.context.classId,
    "BeginDate": $.context.classStartDate,  // Mapped from context
    "EndDate": $.context.classEndDate,      // Mapped from context
    "Decision": $.context.decisionValue  // Holds "APPROVED" or "REJECTED"
};

// Set HANA request body
$.context.hanaRequestBody = {
    "STATUS": $.context.decisionText  // Holds "APPROVED" or "REJECTED"
};