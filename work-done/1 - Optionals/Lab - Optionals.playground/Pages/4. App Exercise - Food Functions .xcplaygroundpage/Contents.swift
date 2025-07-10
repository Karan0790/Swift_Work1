    import Foundation
/*:
## App Exercise - Food Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Suppose you want your fitness tracking app to give users the ability to log food. Once food has been logged, users should be able to go back and see what they ate at a specific meal.
 
 Write a function that takes a `String` parameter where you will pass in either "Breakfast," "Lunch," or "Dinner." The function should then return the `Meal` object associated with that meal, or return `nil` if the user hasn't logged that meal yet. Note that a `Meal` object and a dictionary, `meals`, representing the meal log have been created for you below. Call the function one or twice and print the return value.
 */
struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Breakfast": Meal(food: ["Bagel", "Orange Juice", "Egg Whites"], calories: 530)]

func mealCheck(_ meal: String)-> Meal?{
    if let meal1 = meals[meal]{
        return meal1
    }else{
        return nil
    }
}

if let val = mealCheck("Breakfast"){
    print(val)
}else{
    print("Meal not found")
}
/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Failable Initializers](@next)
 */
struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var address: Address?
}

struct Address{
    var streetName: String
    var buildingNumber: String
    var apartNumber: String?
}

let firstPerson = Person(age:20,residence:
            Residence(address:
            Address(streetName:"ABC",buildingNumber: "11-A",apartNumber: "420")))

if let theResidence = firstPerson.residence?.address?.apartNumber{
    print("the address is \(theResidence)")
}else{
    print("address not found")
}
