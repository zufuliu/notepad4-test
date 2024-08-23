#!ShebangLine
// https://kotlinlang.org/docs/home.html

// LineComment
// TODO:
//! TODO:
/// TODO:

/* DelimitedComment
/*
TODO:
*/
*/

/** KDoc
 * @param name
 * TODO:
 /*
 */
 */

123_456 123_456U 123_456L
123_456E+1 123_456E+1F
0x123_456
0b11_11

'\t\u12345'

`QuotedSymbol`

"\t\u12345\$${1+1}$Identifier"

"""multiline string
\t\u12345\$${1+1}$Identifier
"""""

return@ Identifier		// RETURN_AT
continue@ Identifier	// CONTINUE_AT
break@ Identifier		// BREAK_AT
this@Identifier			// THIS_AT
super@Identifier		// SUPER_AT

loop@ for (i in 1..100) {
    for (j in 1..100) {
        if (...) break@loop
    }
}

fun signalCheck(signalStatus: Any) {
    if (signalStatus is Postponed || signalStatus is Declined) {
        // signalStatus is smart-cast to a common supertype Status
        signalStatus.signal()
        val x: Postponed = signalStatus as Postponed
        val y: Declined = signalStatus as? Declined
    }
}

fun processWithdrawal(amount: Double, availableFunds: Double) {
    if (amount > availableFunds) {
        throw InsufficientFundsException("Insufficient funds for the withdrawal.")
    }
    if (amount < 1 || amount % 1 != 0.0) {
        throw WithdrawalException("Invalid withdrawal amount.")
    }
    println("Withdrawal processed")
}

import org.example.Message // Message is accessible
import org.test.Message as TestMessage // TestMessage stands for 'org.test.Message'

class Customer public @Inject constructor(name: String) { /*...*/ }

interface Named {
    val name: String
}

open class Shape
class Rectangle: Shape()

fun Shape.getName() = "Shape"
fun Rectangle.getName() = "Rectangle"

data class User(val name: String, val age: Int)

sealed interface Error
sealed class IOError(): Error

class Outer {
    private val bar: Int = 1
    inner class Inner {
        fun foo() = bar
    }
}

enum class Direction { NORTH, SOUTH, WEST, EAST }

@JvmInline
value class Password(private val s: String)

typealias Predicate<T> = (T) -> Boolean

@file:JvmName("Foo")

@JvmRepeatable(Tags::class)
annotation class Tag(val name: String)

fun foo(vararg strings: String) { /*...*/ }
fun <T> singletonList(item: T): List<T> { /*...*/ }
