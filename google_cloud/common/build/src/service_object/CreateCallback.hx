package google_cloud.common.build.src.service_object;

typedef CreateCallback<T> = ts.AnyOf2<(err:Null<google_cloud.common.ApiError>) -> Void, (err:Null<google_cloud.common.ApiError>, instance:T) -> Void>;