/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x = 10
let y:Double = 3.2
let multipliedAsintegers = Double(x)*y
print(multipliedAsintegers)
//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
print(Int(multipliedAsintegers))

//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print("yes because double shows the decimal values also")

/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
