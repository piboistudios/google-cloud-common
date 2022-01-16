package google_cloud.common.build.src.util;

typedef MakeWritableStreamOptions = {
	/**
		A connection instance used to get a token with and send the request
		through.
	**/
	@:optional
	var connection : { };
	/**
		Metadata to send at the head of the request.
	**/
	@:optional
	var metadata : {
		@:optional
		var contentType : String;
	};
	/**
		Request object, in the format of a standard Node.js http.request() object.
	**/
	@:optional
	var request : teeny_request.Options;
	function makeAuthenticatedRequest(reqOpts:teeny_request.OptionsWithUri, fnobj:{ function onAuthenticated(err:Null<js.lib.Error>, ?authenticatedReqOpts:teeny_request.Options):Void; }):Void;
};