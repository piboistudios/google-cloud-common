package google_cloud.common;

typedef DeleteCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, apiResponse:teeny_request.Response<Dynamic>) -> Void>;