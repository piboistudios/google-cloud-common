package google_cloud.common.build.src.util;

typedef GoogleErrorBody = {
	var code : Float;
	@:optional
	var errors : Array<GoogleInnerError>;
	var response : teeny_request.Response<Dynamic>;
	@:optional
	var message : String;
};