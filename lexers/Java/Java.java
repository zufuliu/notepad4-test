#!shebang
// comment line

/// - [the `java.base` module][java.base/]
/// - [the `java.util` package][java.util]
/// - [a class][String]
/// - [a field][String#CASE_INSENSITIVE_ORDER]
/// - [a method][String#chars()]

/*
comment block
*/

/**
 * doc comment block
 */

/**md
 * Hello _World!_
 */

 0x1.fffffeP+127f

"string\t{0}%d"
"""text
block\t{0}%d"""
'\u12345'

String time = STR."The time is \{
    // The java.time.format package is very useful
    DateTimeFormatter
      .ofPattern("HH:mm:ss")
      .format(LocalTime.now())
} right now";

String json = STR."""
    {
        "name":    "\{name}",
        "phone":   "\{phone}",
        "address": "\{address}"
    }
    """;

public class Test {
    interface Logging {
        default void logAction() {
            System.out.println("Logged");
        }
    }

    record Point(int i, int j) implements Logging {}

    public static void main(String[] args) {
        Point p = new Point(10, 20);
        p.logAction();
    }
}

enum Season { WINTER, SPRING, SUMMER, FALL }

@Target(ElementType.TYPE_USE)
@interface Foo {}

Outer.Inner::new
