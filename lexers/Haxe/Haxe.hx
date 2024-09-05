// comment line
// comment line
/*
comment block
*/
 /**
    Multi-line comments for documentation.
**/

class Point3 extends Point {
  var z:Int;

  public function new(x, y, z) {
    super(x, y);
    this.z = z;
  }
}

interface Printable {
    public function toString():String;
}

enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}

var user = {
  name : "Nicolas",
    age : 32,
    pos : [
      { x : 0, y : 0 },
        { x : 1, y : -1 }
  ],
};

typedef User = {
  var age : Int;
  var name : String;
  @:optional var phoneNumber : String;
}

typedef IterableWithLength<T> = {
  > Iterable<T>,
  // read only property
  var length(default, null):Int;
}

class Main {
  static function main() {
    var jsonData = '[1, 2, 3]';
    var json = haxe.Json.parse(jsonData);
    $type(json); // Unknown<0>
    for (i in 0...json.length) {
      // Array access is not allowed on
      // {+ length : Int }
      trace(json[i]);
    }
  }
}

var r = ~/haxe/i;
var evenNumbers = [for (i in 0...100) if (i & 1 == 0) i];
class MyClass {
  @range(1, 8) var value:Int;
}
trace(haxe.rtti.Meta.getFields(MyClass).value.range); // [1,8]
trace('My name is $name and I work in ${job.industry}');

class Main {
  public static function main() {
    #if !debug
    trace("ok");
    #elseif (debug_level > 3)
    trace(3);
    #else
    trace("debug level too low");
    #end
  }
}

import haxe.macro.Expr;

class Main {
  static public function main() {
    var x = 0;
    var b = add(x++);
    trace(x); // 2
  }

  macro static function add(e:Expr) {
    return macro $e + $e;
  }
}

var str = "Line one
Line $two\u{123456}
Line three";
trace(str);
