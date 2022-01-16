package google_cloud.common;

typedef ResponseCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:teeny_request.Response<Dynamic>) -> Void>;