// This is a comment.
/* This is also a comment
but is written over multiple lines. */
/* This is the start of the first multiline comment.
    /* This is the second,
    nested multiline comment. */
This is the end of the first multiline comment. */

/// Xcode Markup Overview
//! [Next Topic](@next)
/*!
 * some text
 */
 /**
  * some text
  */
/*: some text
 * some text
 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
for name in names[...2] {
    print(name)
}

let someString = "Some string literal value"
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
let sparklingHeart = "\u{1F496}"

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
print(#"6 times 7 is \#(6 * 7)."#)
print(#"6 times 7 is \#u{1F496}(6 * 7)."#)

#/<#regular expression#>/#

#/
<#regular expression#>
/#

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

@available(macOS 10.12, *)
struct ColorPreference {
    var bestColor = "blue"
}

func chooseBestColor() -> String {
    guard #available(macOS 10.12, *) else {
       return "gray"
    }
    let colors = ColorPreference()
    return colors.bestColor
}

reversedNames = names.sorted() { $0 > $1 }

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

@attached(member, names: named(RawValue), named(rawValue),
        named(`init`), arbitrary)
@attached(extension, conformances: OptionSet)
public macro OptionSet<RawType>() =
        #externalMacro(module: "SwiftMacros", type: "OptionSetMacro")

extension SomeType: SomeProtocol, AnotherProtocol {
    // implementation of protocol requirements goes here
}

protocol FullyNamed {
    var fullName: String { get }
}

#if swift(>=4.2)
print("Compiled in Swift 4.2 mode or later")
#endif
