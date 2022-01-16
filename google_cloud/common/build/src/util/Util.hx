package google_cloud.common.build.src.util;

@:jsRequire("@google-cloud/common/build/src/util", "Util") extern class Util {
	function new();
	var ApiError : {
		var prototype : google_cloud.common.ApiError;
		/**
			Pieces together an error message by combining all unique error messages
			returned from a single GoogleError
		**/
		function createMultiErrorMessage(err:GoogleErrorBody, ?errors:Array<GoogleInnerError>):String;
		/**
			Create .stack property on a target object
		**/
		function captureStackTrace(targetObject:Dynamic, ?constructorOpt:haxe.Constraints.Function):Void;
		/**
			Optional override for formatting stack traces
		**/
		@:optional
		dynamic function prepareStackTrace(err:js.lib.Error, stackTraces:Array<global.nodejs.CallSite>):Dynamic;
		var stackTraceLimit : Float;
	};
	var PartialFailureError : {
		var prototype : PartialFailureError;
		/**
			Create .stack property on a target object
		**/
		function captureStackTrace(targetObject:Dynamic, ?constructorOpt:haxe.Constraints.Function):Void;
		/**
			Optional override for formatting stack traces
		**/
		@:optional
		dynamic function prepareStackTrace(err:js.lib.Error, stackTraces:Array<global.nodejs.CallSite>):Dynamic;
		var stackTraceLimit : Float;
	};
	/**
		No op.
	**/
	function noop():Void;
	/**
		Uniformly process an API response.
	**/
	function handleResp(err:Null<js.lib.Error>, ?resp:teeny_request.Response<Dynamic>, ?body:Dynamic, ?callback:google_cloud.common.BodyResponseCallback):Void;
	/**
		Sniff an incoming HTTP response message for errors.
	**/
	function parseHttpRespMessage(httpRespMessage:teeny_request.Response<Dynamic>):ParsedHttpRespMessage;
	/**
		Parse the response body from an HTTP request.
	**/
	function parseHttpRespBody(body:Dynamic):ParsedHttpResponseBody;
	/**
		Take a Duplexify stream, fetch an authenticated connection header, and
		create an outgoing writable stream.
	**/
	function makeWritableStream(dup:Duplexify, options:MakeWritableStreamOptions, ?onComplete:haxe.Constraints.Function):Void;
	/**
		Returns true if the API request should be retried, given the error that was
		given the first time the request was attempted. This is used for rate limit
		related errors as well as intermittent server errors.
	**/
	function shouldRetryRequest(?err:google_cloud.common.ApiError):Bool;
	/**
		Get a function for making authenticated requests.
	**/
	function makeAuthenticatedRequestFactory(config:MakeAuthenticatedRequestFactoryConfig):MakeAuthenticatedRequest;
	/**
		Make a request through the `retryRequest` module with built-in error
		handling and exponential back off.
	**/
	function makeRequest(reqOpts:google_cloud.common.DecorateRequestOptions, config:MakeRequestConfig, callback:google_cloud.common.BodyResponseCallback):ts.AnyOf2<ts.Undefined, google_cloud.common.Abortable>;
	/**
		Decorate the options about to be made in a request.
	**/
	function decorateRequest(reqOpts:google_cloud.common.DecorateRequestOptions, projectId:String):google_cloud.common.DecorateRequestOptions;
	function isCustomType(unknown:Dynamic, module:String):Bool;
	/**
		Create a properly-formatted User-Agent string from a package.json file.
	**/
	function getUserAgentFromPackageJson(packageJson:PackageJson):String;
	/**
		Given two parameters, figure out if this is either:
		  - Just a callback function
		  - An options object, and then a callback function
	**/
	function maybeOptionsOrCallback<T, C>(?optionsOrCallback:ts.AnyOf2<T, C>, ?cb:C):ts.Tuple2<T, C>;
	static var prototype : Util;
}