/*:
## Exercise - Switch Statements
 
 Imagine you're on a baseball team nearing the end of the season. Create a `leaguePosition` constant with a value of 1. Using a `switch` statement, print "Champions!" if the `leaguePosition` is 1, "Runners up" if the value is 2, "Third place" if the value is 3, and "Bad season!" in all other cases.
 */
let leaguePositon = 1
switch leaguePositon {
case 1:
    print("Champions")
case 2:
    print("Runner Up")
case 3:
    print("Third place")
default:
    print("Bad season")
}

switch leaguePositon {
case 1...3:
    print("Medal Winner")

default:
    print("No medal awarded")
}

/*:
[Previous](@previous)  |  page 6 of 9  |  [Next: App Exercise - Heart Rate Zones](@next)
 */
