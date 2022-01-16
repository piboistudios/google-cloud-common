package google_cloud.common.build.src.util;

typedef MakeAuthenticatedRequest = {
	@:overload(function(reqOpts:google_cloud.common.DecorateRequestOptions, ?options:MakeAuthenticatedRequestOptions):ts.AnyOf2<ts.Undefined, google_cloud.common.Abortable> { })
	@:overload(function(reqOpts:google_cloud.common.DecorateRequestOptions, ?callback:google_cloud.common.BodyResponseCallback):ts.AnyOf2<ts.Undefined, google_cloud.common.Abortable> { })
	@:overload(function(reqOpts:google_cloud.common.DecorateRequestOptions, ?optionsOrCallback:ts.AnyOf2<google_cloud.common.BodyResponseCallback, MakeAuthenticatedRequestOptions>):ts.AnyOf3<ts.Undefined, google_cloud.common.Abortable, Duplexify> { })
	@:selfCall
	function call(reqOpts:google_cloud.common.DecorateRequestOptions):Duplexify;
	dynamic function getCredentials(callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, credentials:google_auth_library.CredentialBody) -> Void>):Void;
	var authClient : google_auth_library.GoogleAuth;
};