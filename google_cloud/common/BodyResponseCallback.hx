package google_cloud.common;

typedef BodyResponseCallback = ts.AnyOf3<(err:Null<ts.AnyOf2<js.lib.Error, ApiError>>) -> Void, (err:Null<ts.AnyOf2<js.lib.Error, ApiError>>, body:Dynamic) -> Void, (err:Null<ts.AnyOf2<js.lib.Error, ApiError>>, body:Dynamic, res:teeny_request.Response<Dynamic>) -> Void>;