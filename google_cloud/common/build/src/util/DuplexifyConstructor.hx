package google_cloud.common.build.src.util;

typedef DuplexifyConstructor = {
	@:selfCall
	function call(?writable:ts.AnyOf2<Bool, node.stream.Writable>, ?readable:ts.AnyOf2<Bool, node.stream.Readable>, ?options:DuplexifyOptions):Duplexify;
	function obj(?writable:ts.AnyOf2<Bool, node.stream.Writable>, ?readable:ts.AnyOf2<Bool, node.stream.Readable>, ?options:DuplexifyOptions):Duplexify;
};