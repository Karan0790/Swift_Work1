/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram<=0 || yearManufactured>2020 || yearManufactured<1970{
            return nil
        }else{
            self.ram = ram
            self.yearManufactured = yearManufactured
        }
    }
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let lenovo = Computer(ram: 16, yearManufactured: 2020)
let asus = Computer(ram: 8, yearManufactured: 1965)

if let comp = lenovo{
    print(comp)
}else{
    print("lenovo is outdated")
}

if let comp = asus{
    print(comp)
}else{
    print("asus is outdated")
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
//class Student{
//    var age: Int
//    var name: String
//    var mentor: Mentor?
//    
//    init?(age:Int,name:String,mentor:Mentor){
//        if name.isEmpty || age<10{
//            return nil
//        }else{
//            self.age = age
//            self.name = name
//            self.mentor = mentor
//        }
//    }
//    
//    func getMentorSpecialization()->String?{
//        mentor?.specialization
//    }
//}
//
//class Mentor{
//    var specialization: String?
//    
//    init(specialization: String?) {
//        self.specialization = specialization
//    }
//    
//}
//
//let student1 = Student(age: 11, name: "", mentor: Mentor(specialization: "iOS"))
//if let sMentor = student1?.getMentorSpecialization(){
//    print(sMentor)
//}else{
//    print("you cannot fetch the mentor details")
//}
//
//let student2 = Student(age: 10, name: "Alice", mentor: Mentor(specialization: "Cyber Security"))
//if let sMentor = student2?.getMentorSpecialization(){
//    print(sMentor)
//}else{
//    print("you cannot fetch the mentor details")
//}
//
//let student3 = Student(age: 20, name: "Bob", mentor: Mentor(specialization: nil))
//if let sMentor = student3?.getMentorSpecialization(){
//    print(sMentor)
//}else{
//    print("you cannot fetch the mentor details")
//}
//
//let student4 = Student(age: 20, name: "Bob", mentor: Mentor(specialization: "Fe-dev"))
//if let sMentor = student4?.getMentorSpecialization(){
//    print(sMentor)
//}else{
//    print("you cannot fetch the mentor details")
//}
