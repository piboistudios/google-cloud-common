package google_cloud.common.build.src.util;

typedef MakeAuthenticatedRequestFactoryConfig = {
	/**
		Automatically retry requests if the response is related to rate limits or
		certain intermittent server errors. We will exponentially backoff
		subsequent requests by default. (default: true)
	**/
	@:optional
	var autoRetry : Bool;
	/**
		If true, just return the provided request options. Default: false.
	**/
	@:optional
	var customEndpoint : Bool;
	/**
		If true, will authenticate when using a custom endpoint. Default: false.
	**/
	@:optional
	var useAuthWithCustomEndpoint : Bool;
	/**
		Account email address, required for PEM/P12 usage.
	**/
	@:optional
	var email : String;
	/**
		Maximum number of automatic retries attempted before returning the error.
		(default: 3)
	**/
	@:optional
	var maxRetries : Float;
	@:optional
	var stream : Duplexify;
	/**
		A pre-instantiated GoogleAuth client that should be used.
		A new will be created if this is not set.
	**/
	@:optional
	var authClient : google_auth_library.GoogleAuth;
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFilename : String;
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFile : String;
	/**
		Object containing client_email and private_key properties, or the
		external account client options.
	**/
	@:optional
	var credentials : ts.AnyOf3<google_auth_library.CredentialBody, google_auth_library.IdentityPoolClientOptions, google_auth_library.AwsClientOptions>;
	/**
		Options object passed to the constructor of the client
	**/
	@:optional
	var clientOptions : ts.AnyOf4<google_auth_library.JWTOptions, google_auth_library.OAuth2ClientOptions, google_auth_library.UserRefreshClientOptions, google_auth_library.ImpersonatedOptions>;
	/**
		Required scopes for the desired API request
	**/
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	/**
		Your project ID.
	**/
	@:optional
	var projectId : String;
};