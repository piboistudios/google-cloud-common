package google_cloud.common;

/**
	Custom error type for API errors.
**/
@:jsRequire("@google-cloud/common", "ApiError") extern class ApiError extends js.lib.Error {
	@:overload(function(errorBody:google_cloud.common.build.src.util.GoogleErrorBody):ApiError { })
	function new(errorMessage:String);
	@:optional
	var code : Float;
	@:optional
	var errors : Array<google_cloud.common.build.src.util.GoogleInnerError>;
	@:optional
	var response : teeny_request.Response<Dynamic>;
	static var prototype : ApiError;
	/**
		Pieces together an error message by combining all unique error messages
		returned from a single GoogleError
	**/
	static function createMultiErrorMessage(err:google_cloud.common.build.src.util.GoogleErrorBody, ?errors:Array<google_cloud.common.build.src.util.GoogleInnerError>):String;
}