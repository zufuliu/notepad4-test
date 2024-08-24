# comment line
## doc comment line

#[nested
#[comment block]#
]#

#[  #[ Multiline comment in already
   commented out code. ]#
proc p[T](x: T) = discard
]#

proc foo =
  ##[Long documentation comment
     here.
  ]##

const `assert` = true

""""long string within quotes""""
r"a""b"
identifier"""string literal"""

"string\t{{}}{0}";
r"string\t{{}}{0}";
R"string\t{{}}{0}";

&"string\t{{}}{0:d}";
fmt"string\t{{}}{0:d}";

"""string\t{{}}{0}""";
&"""string\t{{}}{0:d}""";
fmt"""string\t{{}}{0:d}""";

'chracter';

import strutils
type u4 = distinct uint8 # a 4-bit unsigned integer aka "nibble"
proc `'u4`(n: string): u4 =
  # The leading ' is required.
  result = (parseInt(n) and 0x0F).u4

var x = 5'u4
echo($foo)
var a, b: array[0..2, int]
{.nanChecks: on, infChecks: on.}

assert &"{msg}\n" == "hello\n"
assert fmt"{msg}{'\n'}" == "hello\n"
assert &"""{"abc":>4}""" == " abc"
assert &"""{"abc":<4}""" == "abc "
assert fmt"{(if x!=0: 1.0/x else: 0):.5}" == "0.31847"
assert fmt"""{(block:
    var res: string
    for i in 1..15:
      res.add (if i mod 15 == 0: "FizzBuzz"
        elif i mod 5 == 0: "Buzz"
        elif i mod 3 == 0: "Fizz"
        else: $i) & " "
    res)}""" == "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz "

