package google_cloud.common;

typedef ServiceConfig = {
	/**
		The base URL to make API requests to.
	**/
	var baseUrl : String;
	/**
		The API Endpoint to use when connecting to the service.
		Example:  storage.googleapis.com
	**/
	var apiEndpoint : String;
	/**
		The scopes required for the request.
	**/
	var scopes : Array<String>;
	@:optional
	var projectIdRequired : Bool;
	var packageJson : google_cloud.common.build.src.util.PackageJson;
	/**
		Reuse an existing GoogleAuth client instead of creating a new one.
	**/
	@:optional
	var authClient : google_auth_library.GoogleAuth;
};