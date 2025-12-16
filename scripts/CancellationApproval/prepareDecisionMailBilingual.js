var context = $.context;
var mailStatus = "";

// Determine MailStatus based on workflow conditions
// Check waitlist first - approved request can be waitlisted due to capacity
if (context.approved) {
    mailStatus = "CANCELLED_BY_EMPLOYEE_APPROVED";
} else 
    mailStatus = "CANCELLED_BY_EMPLOYEE_REJECT";


// Build mail request body
context.MailDecisionRequestBody = {
    "MailStatus": mailStatus,
    "cancellationReason": context.cancellationReason || "",

    // Employee Data
    "employeeId": context.employeeId,
    "employeeMail": context.employeeMail,
    "employeeNameEn": context.employeeInfo.EmpEnglishName || context.employeeName,
    "employeeNameAr": context.employeeInfo.EmpArabicName || context.employeeName,

    // Training Event Data
    "classTitle": context.classTitle,
    "classId": context.classId,
    "classStartDateDesc": context.classStartDate,
    "classEndDateDesc": context.classEndDate,
    "classStartDateDescAr": context.classStartDate ,
    "classEndDateDescAr": context.classEndDate || context.classEndDate,
    "classStartTime": context.classStartTime,
    "classEndTime": context.classEndTime,
    "classTotalDays": context.classTotalDays,
    "trainingLanguage": context.trainingLanguage,

    // Location Data
    "facilityDesc": context.facilityDesc,
    "country": context.country,
    "region": context.region,
    "city": context.city,
    "building": context.building,

    // Pricing & Other
    "trainingCenterName": context.trainingCenterName,
    "classPrice": context.classPrice || "0",
    "externalPrice": context.externalPrice || "0",
    "trainingTypeId": context.trainingTypeId,

    // Additional Fields
    "classOrganizer": context.classOrganizer || "",
    "intPrice": context.intPrice || "0",
    "extPrice": context.extPrice || "0",
    "fRegion": context.fRegion || "",
    "fLocation": context.fLocation || ""
};
