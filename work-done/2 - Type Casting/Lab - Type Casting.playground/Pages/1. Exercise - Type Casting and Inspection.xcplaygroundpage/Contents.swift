/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collec: [Any] = [10, 100.0, "Hello", true, 30]
for item in collec {
    print(item)
}

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for int in collec{
    if let intValue = int as? Int{
        print("The integer has a value of \(intValue)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dict: [String:Any] = ["mango":200, "pen":10.0, "apple":"red", "isStudent":true]
for (key,value) in dict{
    print("\(key), \(value)")
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total:Double = 0
for (key,value) in dict{
    if let intValue = value as? Int{
        total += Double(intValue)
    }
    
    if let doubleValue = value as? Double{
        total += 1
    }
    if let boolValue = value as? Bool{
        total += 2
    }
    else{
        total -= 3
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2:Double = 0
for (key,value) in dict{
    if let intValue = value as? Int{
        total += Double(intValue)
    }
    
    if let doubleValue = value as? Double{
        total += Double(doubleValue)
    }
    if let strValue = value as? String{
        total += Double(strValue) ?? 0
    }
}

print(total)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
