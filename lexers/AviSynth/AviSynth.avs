Subtitle("Hello, World!", 100, 200, 0, \
  999999, "Arial", 24, $00FF00)

AviSource("myclip.avi")    # this is a standard comment
/* this is a block comment
we can write a lot here
SubTitle("Hello, World!")
and also comment out multiple lines of code
*/

[* this is a nested block comment
[*
a meaningful example will follow later :)
*]
for the time being just experiment *]

a_string = "this is a string\t literal"

another_string = """this is a\t multiline
       string literal. Note that the 2nd line has leading spaces (which are included)
while this line has not. Also newlines are included in this type
       of strings"""

escaped_string = e"Hello \n"

dummy = heavy_filtering ? Eval("""
    Levels(0, 1.2, 255, 20, 235)
    stext = "heavily filtered"
    Spline36Resize(720, 400)
""") : Eval("""
    stext = "lightly filtered"
    BicubicResize(720, 400)
""")

GScript("""
if (i > 10) {
  x = 1
  y = 2
  z = 3
}
else {
  x = 4
  y = 5
  z = 6
}
""")
