#!/usr/bin/env groovy
println "Hello from the shebang line"

// a standalone single line comment
println "hello" // a comment till the end of the line

/**
 * A Class description
 */
class Person {
    /** the name of the person */
    String name

    /**
     * Creates a greeting method for a certain person.
     *
     * @param otherPerson the person to greet
     * @return a greeting message
     */
    String greet(String otherPerson) {
       "Hello ${otherPerson}"
    }
}

/**@
 * Some class groovydoc for Foo
 */
class Foo {
    /**@
     * Some method groovydoc for bar
     */
    void bar() {
    }
}

def $dollarStart
map.'single quote'
map."double quote"
map.'''triple single quote'''
map."""triple double quote"""
map./slashy string/
map./1/
map.$/dollar slashy string/$
map.$//$

def strippedFirstNewline = '''\
line one
line two
line three
'''
'The Euro currency symbol: \u20AC'

def person = [name: 'Guillaume', age: 36]
assert "$person.name is $person.age years old" == 'Guillaume is 36 years old'
shouldFail(MissingPropertyException) {
    println "$number.toString()"
}
assert '$5' == "\$5"
def sOneParamClosure = "1 + 2 == ${ w -> w << 3}"

def escapeSlash = /The character \/ is a forward slash/
def dollarSlashy = $/
    Hello $name,
    today we're ${date}.

    $ dollar sign
    $$ escaped dollar sign
    \ backslash
    / forward slash
    $/ escaped forward slash
    $$$/ escaped opening dollar slashy
    $/$$ escaped closing dollar slashy
/$

def name = person?.name
assert user.@name == 'Bob'
def fun = str.&toUpperCase
def instanceMethod = String.&toUpperCase
@CompileStatic
void methodRefs() {
    assert 6G == [1G, 2G, 3G].stream().reduce(0G, BigInteger::add)
}
def makes = cars*.make
def range = 0..5
assert (1 <=> 1) == 0
Integer num = input as Integer
List<String> strings = new LinkedList<>()


import java.lang.*
import java.util.*
import static Boolean.FALSE
import static Calendar.getInstance as now

interface Greeter {
    void greet(String name)
}

class SystemGreeter implements Greeter {
    void greet(String name) {
        println "Hello $name"
    }
}

def foo(Map args) { "${args.name}: ${args.age}" }
foo(name: 'Marie', age: 1)

@interface SomeAnnotation {
    String value() default 'something'
}
