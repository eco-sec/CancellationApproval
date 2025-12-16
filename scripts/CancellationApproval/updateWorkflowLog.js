// Date formatting function - MUST be defined before use
function formatDateToYYYYMMDD(dateInput) {
    try {
        if (!dateInput) {
            return "";
        }

        var date;

        // Handle Date object
        if (dateInput instanceof Date) {
            date = dateInput;
        }
        // Handle SAP OData format: Date(milliseconds) or /Date(milliseconds)/
        else if (typeof dateInput === "string" && (dateInput.indexOf("Date(") !== -1 || dateInput.indexOf("/Date(") !== -1)) {
            var timestamp = dateInput.match(/Date\((\d+)\)/);
            if (timestamp && timestamp[1]) {
                date = new Date(parseInt(timestamp[1]));
            } else {
                return "";
            }
        }
        // Handle DD/MM/YYYY format
        else if (typeof dateInput === "string" && dateInput.indexOf("/") !== -1) {
            var parts = dateInput.split("/");
            if (parts.length === 3) {
                var day = parts[0];
                var month = parts[1];
                var year = parts[2];
                return year + month + day; // Format: YYYYMMDD
            }
            return "";
        }
        // Handle YYYYMMDD format (already correct)
        else if (typeof dateInput === "string" && dateInput.length === 8 && !isNaN(dateInput)) {
            return dateInput;
        }
        else {
            return "";
        }

        // Convert date object to YYYYMMDD
        if (date && !isNaN(date.getTime())) {
            var year = date.getFullYear();
            var month = ("0" + (date.getMonth() + 1)).slice(-2);
            var day = ("0" + date.getDate()).slice(-2);
            return year + month + day; // Format: YYYYMMDD
        }

        return "";
    } catch (e) {
        return ""; // Return empty string on error instead of original value
    }
}

if ($.context.DecisionText === "Rejected") {
	// If the decision is "reject", set status to "Rejected"
	$.context.Status = "Rejected";
	// Clear the filteredApprovers list
	$.context.filteredApprovers = [];
} else {
	// If the decision is "approved" or any other value, handle accordingly
	if ($.context.isApprovedComplete) {
		// If there are elements in filteredApprovers, set status to "Pending"
		$.context.Status = "Approved";
		$.context.filteredApprovers = [];

	} else {
		$.context.Status = "Pending";

		// Otherwise, set status to "Approved"

	}
}

$.context.workflowRequest = {
	workflowInstanceId: $.context.workflowInstanceId || "",
	employeeId: $.context.employeeId || "",
	employeeName: $.context.employeeName || "",
	employeeEmail: $.context.employeeEmail || "",
	employeePosition: $.context.employeePosition || "",
	employeeOrganizationId: $.context.employeeOrganizationId || "",
	requestId: $.context.requestId || "",
	trainingTypeId: "7" || "",
	trainingTypeDesc:  "Cancel By Employee",
	classId: $.context.classId || "",
	classTitle: $.context.classTitle || "",
	classDescription: $.context.classDescription || "",
    classStartDate: formatDateToYYYYMMDD($.context.classStartDate),
    classEndDate: formatDateToYYYYMMDD($.context.classEndDate),
	classStartTime: $.context.classStartTime || "",
	classEndTime: $.context.classEndTime || "",
	classTotalDays: $.context.classTotalDays || "",
	country: $.context.country || "",
	city: $.context.city || "",
	trainingCenterName: $.context.trainingCenterName || "",
	expectedTrainingDateInDays: $.context.expectedTrainingDateInDays || "",
	trainingDuration: $.context.trainingDuration || "",
	trainingLanguage: $.context.trainingLanguage || "",
	price: $.context.price || "",
	currency: $.context.currency || "",
	financialCommitmentNumber: $.context.financialCommitmentNumber || "",
	facilityId: $.context.facilityId || "",
	facilityDesc: $.context.facilityDesc || "",
	classPrice: $.context.classPrice || "",
	classCurrency: $.context.classCurrency || "",
	itemTitleEn: $.context.itemTitleEn || "",
	itemTitleAr: $.context.itemTitleAr || "",
	status: $.context.Status || "",
	currentApproverList: $.context.filteredApprovers || [],
	ApproverCommentList: $.context.ApproverCommentList || []
};