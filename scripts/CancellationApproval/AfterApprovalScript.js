// Date formatting function - MUST be defined before use
function formatDateToYYYYMMDD(dateStr) {
    try {
        if (!dateStr) {
            return "";
        }

        // Check if date is in SAP OData format: Date(milliseconds)
        if (typeof dateStr === "string" && dateStr.indexOf("Date(") === 0) {
            var timestamp = dateStr.match(/Date\((\d+)\)/);
            if (timestamp && timestamp[1]) {
                var date = new Date(parseInt(timestamp[1]));
                var year = date.getFullYear();
                var month = ("0" + (date.getMonth() + 1)).slice(-2);
                var day = ("0" + date.getDate()).slice(-2);
                return year + month + day; // Format: YYYYMMDD
            }
        }

        // Handle DD/MM/YYYY format
        var parts = dateStr.split("/");
        if (parts.length !== 3) {
            return dateStr; // Return input if not in expected format
        }
        var day = parts[0];
        var month = parts[1];
        var year = parts[2];

        return year + month + day; // Format: YYYYMMDD
    } catch (e) {
        return dateStr; // Return original value if any unexpected error
    }
}

// Determine decision-related values
var isRejected = $.usertasks.usertask2.last.decision === "reject";

$.context.decisionText = isRejected ? "Cancellation Rejected" : "Cancellation Approved";
$.context.decisionValue = isRejected ? "REJECTED" : "APPROVED";
$.context.approved = !isRejected;

// Set enrollment status and withdrawal reason based on decision
var enrollmentStatusID;
var withdrawalReason;

if (isRejected) {
    // Rejection: Status = Enrolled_by_Admin–IT_2002_Succ, Reason = empty
    enrollmentStatusID = $.context.OrginalLMSStatus;
    withdrawalReason = "";
} else {
    // Approval: Status = Cancelled_By_Employee, Reason = Cancelled_By_Employee
    enrollmentStatusID = "Cancelled_By_Employee";
    withdrawalReason = "Cancelled_By_Employee";
}

// Define the LMS request body
$.context.LmsRequestBody = {
    "primaryKey": "",
    "enrollmentStatus": [{
        "scheduleID": Math.floor(parseInt($.context.classId)), // Convert to integer
        "userID": $.context.employeeId, // Employee ID
        "newEnrollmentStatusID": enrollmentStatusID,
        "cancellationReasonID": withdrawalReason
    }]
};

// Include context.cancellationCpiRequestBody
$.context.cancellationCpiRequestBody = {
    "EmpNo": $.context.employeeId,
    "classId": $.context.classId,
    "BeginDate": formatDateToYYYYMMDD($.context.classStartDate),  // Convert to YYYYMMDD
    "EndDate": formatDateToYYYYMMDD($.context.classEndDate),      // Convert to YYYYMMDD
    "Decision": enrollmentStatusID  // Holds "APPROVED" or "REJECTED"
};

