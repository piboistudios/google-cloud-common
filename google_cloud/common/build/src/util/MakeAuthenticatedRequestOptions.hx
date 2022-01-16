package google_cloud.common.build.src.util;

typedef MakeAuthenticatedRequestOptions = {
	dynamic function onAuthenticated(err:Null<js.lib.Error>, ?reqOpts:google_cloud.common.DecorateRequestOptions):Void;
};