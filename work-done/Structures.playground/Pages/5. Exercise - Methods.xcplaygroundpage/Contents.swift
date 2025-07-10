/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("Title: \(title), Author: \(author), Pages: \(pages), Price: \(price)")
    }
    
}

let book1 = Book(title: "Xyx", author: "ABC", pages: 340, price: 507)
book1.description()



//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like(){
        self.likes+=1
    }
}
var like = Post(message: "Hello", likes: 20, numberOfComments: 30)
print("Likes Before: \(like.likes)")
like.like()
like.like()
print("Likes After: \(like.likes)")


/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
