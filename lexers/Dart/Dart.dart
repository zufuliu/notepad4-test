// This is a normal, one-line comment.

/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.

/* Comments like these
/*
*/
 are also supported. */

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

if (astronauts == 0) {
  throw StateError('No astronauts.');
}

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}

var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

var s1 = '''
You can create
\n
multi-line strings like this one.
''';

var s2 = """This is also a
$xxx
multi-line string.""";

var s2 = """This is also a
${xxx}
multi-line string.""";

var s1 = r'''
You can create
multi-line strings like this one.
''';

var s2 = r"""This is also a
multi-line string.""";


var s = r'In a raw string, not even \n gets special treatment.';

(num, Object) pair = (42, 'a');

var first = pair.$1; // Static type `num`, runtime type `int`.
var second = pair.$2; // Static type `Object`, runtime type `String`.

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

({String name, int age}) userInfo(Map<String, dynamic> json)
final (:name, :age) = userInfo(json);

typedef Compare<T> = int Function(T a, T b);

(String, int) foo() {
  return ('something', 42);
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

enum PlanetType { terrestrial, gas, ice }

mixin Piloted {
  int astronauts = 1;

  @Todo('Dash', 'Implement this function')
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  // ···
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

extension type IdNumber(int id) {
  // Wraps the 'int' type's '<' operator:
  operator <(IdNumber other) => id < other.id;
  // Doesn't declare the '+' operator, for example,
  // because addition does not make sense for ID numbers.
}

interface class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}
