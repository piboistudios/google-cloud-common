package google_cloud.common;

typedef ServiceObjectConfig = {
	/**
		The base URL to make API requests to.
	**/
	@:optional
	var baseUrl : String;
	/**
		The method which creates this object.
	**/
	@:optional
	var createMethod : haxe.Constraints.Function;
	/**
		The identifier of the object. For example, the name of a Storage bucket or
		Pub/Sub topic.
	**/
	@:optional
	var id : String;
	/**
		A map of each method name that should be inherited.
	**/
	@:optional
	var methods : Methods;
	/**
		The parent service instance. For example, an instance of Storage if the
		object is Bucket.
	**/
	var parent : ServiceObjectParent;
	/**
		For long running operations, how often should the client poll
		for completion.
	**/
	@:optional
	var pollIntervalMs : Float;
};