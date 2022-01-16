package google_cloud.common;

typedef ExistsCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, exists:Bool) -> Void>;