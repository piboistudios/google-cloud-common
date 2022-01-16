package google_cloud.common;

/**
	ServiceObject is a base class, meant to be inherited from by a "service
	object," like a BigQuery dataset or Storage bucket.
	
	Most of the time, these objects share common functionality; they can be
	created or deleted, and you can get or set their metadata.
	
	By inheriting from this class, a service object will be extended with these
	shared behaviors. Note that any method can be overridden when the service
	object requires specific behavior.
**/
@:jsRequire("@google-cloud/common", "ServiceObject") extern class ServiceObject<T> extends node.Events {
	function new(config:ServiceObjectConfig);
	var metadata : Dynamic;
	@:optional
	var baseUrl : String;
	var parent : ServiceObjectParent;
	@:optional
	var id : String;
	@:optional
	var pollIntervalMs : Float;
	@:optional
	private var createMethod : Dynamic;
	private var methods : Methods;
	var interceptors : Array<Interceptor>;
	/**
		Create the object.
	**/
	@:overload(function(options:google_cloud.common.build.src.service_object.CreateOptions, callback:google_cloud.common.build.src.service_object.CreateCallback<T>):Void { })
	@:overload(function(callback:google_cloud.common.build.src.service_object.CreateCallback<T>):Void { })
	function create(?options:google_cloud.common.build.src.service_object.CreateOptions):js.lib.Promise<google_cloud.common.build.src.service_object.CreateResponse<T>>;
	/**
		Delete the object.
	**/
	@:overload(function(options:google_cloud.common.build.src.service_object.DeleteOptions, callback:DeleteCallback):Void { })
	@:overload(function(callback:DeleteCallback):Void { })
	function delete(?options:google_cloud.common.build.src.service_object.DeleteOptions):js.lib.Promise<ts.Tuple1<teeny_request.Response<Dynamic>>>;
	/**
		Check if the object exists.
	**/
	@:overload(function(options:Dynamic, callback:ExistsCallback):Void { })
	@:overload(function(callback:ExistsCallback):Void { })
	function exists(?options:Dynamic):js.lib.Promise<ts.Tuple1<Bool>>;
	/**
		Get the object if it exists. Optionally have the object created if an
		options object is provided with `autoCreate: true`.
	**/
	@:overload(function(callback:InstanceResponseCallback<T>):Void { })
	@:overload(function(options:GetOrCreateOptions, callback:InstanceResponseCallback<T>):Void { })
	function get(?options:GetOrCreateOptions):js.lib.Promise<google_cloud.common.build.src.service_object.GetResponse<T>>;
	/**
		Get the metadata of this object.
	**/
	@:overload(function(options:Dynamic, callback:MetadataCallback):Void { })
	@:overload(function(callback:MetadataCallback):Void { })
	function getMetadata(?options:Dynamic):js.lib.Promise<MetadataResponse>;
	/**
		Return the user's custom request interceptors.
	**/
	function getRequestInterceptors():Array<haxe.Constraints.Function>;
	/**
		Set the metadata for this object.
	**/
	@:overload(function(metadata:Dynamic, callback:MetadataCallback):Void { })
	@:overload(function(metadata:Dynamic, options:Dynamic, callback:MetadataCallback):Void { })
	function setMetadata(metadata:Dynamic, ?options:Dynamic):js.lib.Promise<SetMetadataResponse>;
	/**
		Make an authenticated API request.
	**/
	private var request_ : Dynamic;
	/**
		Make an authenticated API request.
	**/
	@:overload(function(reqOpts:DecorateRequestOptions, callback:BodyResponseCallback):Void { })
	function request(reqOpts:DecorateRequestOptions):js.lib.Promise<google_cloud.common.build.src.service_object.RequestResponse>;
	/**
		Make an authenticated API request.
	**/
	function requestStream(reqOpts:DecorateRequestOptions):teeny_request.Request;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ServiceObject<T>;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):ServiceObject<T>;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServiceObject<T>;
	static var prototype : ServiceObject<Dynamic>;
}