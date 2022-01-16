package google_cloud.common;

typedef MetadataCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, metadata:Dynamic) -> Void, (err:Null<js.lib.Error>, metadata:Dynamic, apiResponse:teeny_request.Response<Dynamic>) -> Void>;