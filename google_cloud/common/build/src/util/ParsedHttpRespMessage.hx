package google_cloud.common.build.src.util;

typedef ParsedHttpRespMessage = {
	var resp : teeny_request.Response<Dynamic>;
	@:optional
	var err : google_cloud.common.ApiError;
};