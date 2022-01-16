package google_cloud.common.build.src.util;

typedef RetryOptions = {
	@:optional
	var retryDelayMultiplier : Float;
	@:optional
	var totalTimeout : Float;
	@:optional
	var maxRetryDelay : Float;
	@:optional
	var autoRetry : Bool;
	@:optional
	var maxRetries : Float;
	@:optional
	dynamic function retryableErrorFn(err:google_cloud.common.ApiError):Bool;
};