package google_cloud.common.build.src.util;

typedef OnAuthenticatedCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, reqOpts:google_cloud.common.DecorateRequestOptions) -> Void>;