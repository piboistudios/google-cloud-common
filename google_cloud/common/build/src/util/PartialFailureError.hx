package google_cloud.common.build.src.util;

/**
	Custom error type for partial errors returned from the API.
**/
@:jsRequire("@google-cloud/common/build/src/util", "PartialFailureError") extern class PartialFailureError extends js.lib.Error {
	function new(b:GoogleErrorBody);
	@:optional
	var errors : Array<GoogleInnerError>;
	@:optional
	var response : teeny_request.Response<Dynamic>;
	static var prototype : PartialFailureError;
}