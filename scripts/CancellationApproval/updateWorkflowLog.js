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
	trainingTypeDesc:  "No Show",
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


function formatDateToYYYYMMDD(dateStr) {
    try {
        if (!dateStr) {
            return "";
        }
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


