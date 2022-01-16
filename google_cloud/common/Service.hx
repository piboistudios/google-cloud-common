package google_cloud.common;

@:jsRequire("@google-cloud/common", "Service") extern class Service {
	/**
		Service is a base class, meant to be inherited from by a "service," like
		BigQuery or Storage.
		
		This handles making authenticated requests by exposing a `makeReq_`
		function.
	**/
	function new(config:ServiceConfig, ?options:ServiceOptions);
	var baseUrl : String;
	private var globalInterceptors : Dynamic;
	var interceptors : Array<Interceptor>;
	private var packageJson : Dynamic;
	var projectId : String;
	private var projectIdRequired : Dynamic;
	@:optional
	var providedUserAgent : String;
	var makeAuthenticatedRequest : google_cloud.common.build.src.util.MakeAuthenticatedRequest;
	var authClient : google_auth_library.GoogleAuth;
	private var getCredentials : Dynamic;
	final apiEndpoint : String;
	@:optional
	var timeout : Float;
	/**
		Return the user's custom request interceptors.
	**/
	function getRequestInterceptors():Array<haxe.Constraints.Function>;
	/**
		Get and update the Service's project ID.
	**/
	@:overload(function(callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, projectId:String) -> Void>):Void { })
	function getProjectId():js.lib.Promise<String>;
	private function getProjectIdAsync():js.lib.Promise<String>;
	/**
		Make an authenticated API request.
	**/
	private var request_ : Dynamic;
	/**
		Make an authenticated API request.
	**/
	function request(reqOpts:DecorateRequestOptions, callback:BodyResponseCallback):Void;
	/**
		Make an authenticated API request.
	**/
	function requestStream(reqOpts:DecorateRequestOptions):teeny_request.Request;
	static var prototype : Service;
}