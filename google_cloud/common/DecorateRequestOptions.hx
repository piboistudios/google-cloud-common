package google_cloud.common;

typedef DecorateRequestOptions = {
	@:optional
	var autoPaginate : Bool;
	@:optional
	var autoPaginateVal : Bool;
	@:optional
	var objectMode : Bool;
	@:optional
	var maxRetries : Float;
	var uri : String;
	@:optional
	var interceptors_ : Array<Interceptor>;
	@:optional
	var shouldReturnStream : Bool;
	@:optional
	var method : String;
	@:optional
	var timeout : Float;
	@:optional
	var gzip : Bool;
	@:optional
	var json : Dynamic;
	@:optional
	var headers : teeny_request.Headers;
	@:optional
	var body : ts.AnyOf2<String, { }>;
	@:optional
	var useQuerystring : Bool;
	@:optional
	var qs : Dynamic;
	@:optional
	var proxy : String;
	@:optional
	var multipart : Array<teeny_request.RequestPart>;
	@:optional
	var forever : Bool;
	@:optional
	var pool : ts.AnyOf2<node.https.AgentOptions, node.http.AgentOptions>;
};