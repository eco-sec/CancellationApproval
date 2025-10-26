

    try {
    	var context = $.context; // Assume $.context is already defined in your environment
    	$.context.invalidEmployeeId= false;

    	// Check if the necessary properties exist and if Error is a string
    	if (context && context.LeaveResponseBody && context.LeaveResponseBody.TrainingBookingSet && context.LeaveResponseBody.TrainingBookingSet.TrainingBooking &&
    		typeof context.LeaveResponseBody.TrainingBookingSet.TrainingBooking.Error === 'string') {
    		// Check if the length of the Error string is greater than 2
    		if (context.LeaveResponseBody.TrainingBookingSet.TrainingBooking.Error.length > 2) {

    			if (context.LeaveResponseBody.TrainingBookingSet.TrainingBooking.Error.indexOf("is not valid") !== -1) {
    				$.context.invalidEmployeeId = true;
    			}

    			$.context.hasLeaveRequest = true;
    		} else {
    			$.context.hasLeaveRequest = false;
    		}
    	} else {
    		// If there is no Error property or it's not a string, set hasLeaveRequest to false
    		$.context.hasLeaveRequest = false;
    
    	}

    } catch (error) {
    	// Handle any unexpected errors in the property access or processing
    	$.context.hasLeaveRequest = false;
    
    }

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