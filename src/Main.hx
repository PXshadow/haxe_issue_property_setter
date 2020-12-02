class Main {
	static function main() {
		var x = 5;
		var data = new Data(() -> x,(y) -> x = y);
		trace("x: " + Macro.test(data));
		Macro.test(data) = 4;
		trace("x2: " + Macro.test(data));
	}
}
class Data {
	public var value(get, set):Int;
	
	function get_value():Int {
		return get();
	}
	
	function set_value(value:Int):Int {
		set(value);
		return value;
	}
	var get:Void->Int;
	var set:Int->Void;
	public function new(get,set) {
		this.set = set;
		this.get = get;
	}
}