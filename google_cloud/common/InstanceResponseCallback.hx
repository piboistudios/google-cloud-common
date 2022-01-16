package google_cloud.common;

typedef InstanceResponseCallback<T> = ts.AnyOf3<(err:Null<ApiError>) -> Void, (err:Null<ApiError>, instance:T) -> Void, (err:Null<ApiError>, instance:T, apiResponse:teeny_request.Response<Dynamic>) -> Void>;