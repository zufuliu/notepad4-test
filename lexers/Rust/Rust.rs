#!/usr/bin/env rustx

fn main() {
    println!("Hello!");
}

r#true

// comment line
/// doc comment line
//! doc comment line

/*
nested
/*
comment block
*/
*/
#[doc = r" This is a doc comment."]
/**
 * doc
 /*
 comment block
 */
 */
/*!
 * doc
 /*
 comment block
 */
 */

#![attribute]
"string\t{0}\u{000000}"
'\t'
"foo"; r"foo";                     // foo
"\"foo\""; r#""foo""#;             // "foo"

"foo #\"# bar";
r##"foo #"# bar"##;                // foo #"# bar

"\x52"; "R"; r"R";                 // R
"\\x52"; r"\x52";                  // \x52

b"foo"; br"foo";                     // foo
b"\"foo\""; br#""foo""#;             // "foo"

b"foo #\"# bar";
br##"foo #"# bar"##;                 // foo #"# bar

b"\x52"; b"R"; br"R";                // R
b"\\x52"; br"\x52";                  // \x52

c"foo"; cr"foo";                     // foo
c"\"foo\""; cr#""foo""#;             // "foo"

c"foo #\"# bar";
cr##"foo #"# bar"##;                 // foo #"# bar

c"\x52"; c"R"; cr"R";                // R
c"\\x52"; cr"\x52";                  // \x52

r#"raw string\t{0}"#
r"raw string\t{0}"

c"æ";        // LATIN SMALL LETTER AE (U+00E6)
c"\u{00E6}";
c"\xC3\xA6";

b"byte string\t{0}"
b'\t'
br"raw string\t{0}"
br#"raw string\t{0}"#

macro_rules! blackhole { ($tt:tt) => () }
macro_rules! blackhole_lit { ($l:literal) => () }

blackhole!("string"suffix); // OK
blackhole_lit!(1suffix); // OK

123.0f64;
0.1f64;
0.1f32;
12E+99_f64;

macro_rules! Tuple {
    { $A:ty, $B:ty } => { ($A, $B) };
}

thread_local!(static FOO: RefCell<u32> = RefCell::new(1));

// Specify the type of output artifact.
#![crate_type = "lib"]

mod foo {
    pub fn bar() {
        println!("Hello, world!");
    }
}

mod math {
    type Complex = (f64, f64);
}

use std::collections::hash_map::{self, HashMap};
pub use self::foo::{bar, baz};

enum Fieldless {
    Tuple(),
    Struct{},
    Unit,
}

#[repr(C)]
union MyUnion {
    f1: u32,
    f2: f32,
}

const BIT1: u32 = 1 << 0;
const BIT2: u32 = 1 << 1;

trait Shape { fn area(&self) -> f64; }
trait Circle : Shape { fn radius(&self) -> f64; }

let circle = Box::new(circle) as Box<dyn Circle>;
let nonsense = circle.radius() * circle.area();

struct Circle {
    radius: f64,
    center: Point,
}

impl Copy for Circle {}

impl Clone for Circle {
    fn clone(&self) -> Circle { *self }
}

fn foo<'a, T>() {}
trait A<U> {}
struct Ref<'a, T> where T: 'a { r: &'a T }
struct InnerArray<T, const N: usize>([T; N]);
struct EitherOrderWorks<const N: bool, U>(U);

'a: loop {
    'a: loop {
        break 'a;
    }
    print!("outer loop");
    break 'a;
}

for i in 1..11 {
    println!("{}", i);
}
