	// Set the requestBody context variable to provide additional details for the rejection
// Set the requestBody context variable to provide additional details for the rejection
$.context.LmsRequestBody = {
	"primaryKey": "",
	"enrollmentStatus": [{
		"scheduleID": Math.floor(parseInt($.context.classId)), // Dynamically read from context and parsed as an integer
		"userID": $.context.employeeId, // Dynamically read from context
		"newEnrollmentStatusID": "Request_to_Cancel_By_Employee", // Conditional check for the status
		"cancellationReasonID": "Work Commitments"
	}]
};
