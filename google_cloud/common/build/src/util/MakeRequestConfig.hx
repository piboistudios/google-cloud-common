package google_cloud.common.build.src.util;

typedef MakeRequestConfig = {
	/**
		Automatically retry requests if the response is related to rate limits or
		certain intermittent server errors. We will exponentially backoff
		subsequent requests by default. (default: true)
	**/
	@:optional
	var autoRetry : Bool;
	/**
		Maximum number of automatic retries attempted before returning the error.
		(default: 3)
	**/
	@:optional
	var maxRetries : Float;
	@:optional
	var retries : Float;
	@:optional
	var retryOptions : RetryOptions;
	@:optional
	var stream : Duplexify;
	@:optional
	dynamic function shouldRetryFn(?response:teeny_request.Response<Dynamic>):Bool;
};