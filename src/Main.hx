class Main {
	static function main() {
		var data = new Data();
		trace("x: " + Macro.test(data));
		Macro.test(data) = 4;
		trace("x2: " + Macro.test(data));
	}
}
class Data {
	public var value(get, set):Int;
	
	function get_value():Int {
		return 0;
	}
	
	function set_value(value:Int):Int {
		return value;
	}
	public function new() {}
	
}