package google_cloud.common;

typedef ServiceObjectParent = {
	var interceptors : Array<Interceptor>;
	function getRequestInterceptors():Array<haxe.Constraints.Function>;
	function requestStream(reqOpts:DecorateRequestOptions):teeny_request.Request;
	function request(reqOpts:DecorateRequestOptions, callback:BodyResponseCallback):Void;
};