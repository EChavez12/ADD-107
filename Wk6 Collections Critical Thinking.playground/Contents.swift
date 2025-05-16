import UIKit

var greeting = "Hello, playground I'll be making a collection of items I have at home."

// Dictionary/Collections of things I have at home and the ammount.
var myCollection: [String: Int] = ["Couches": 4,"Chairs": 10, "Pillows": 6, "Tv's": 4, "Books": 9, "bathrooms": 3, "tables": 5]

let sortedArray2 = myCollection.sorted( by: { $0.1 < $1.1 })
print(sortedArray2)

// Array of my books
var myBooks = ["Jujutsu Kaisen vol. 18", "Farenheit 451", "Metro 2033", "The Alchemist", "Mastering Swift 5.3"]

var myOtherBooks = ["1984", "Monster", "Utopia"]

var combinedBooks = myBooks + myOtherBooks

print(combinedBooks)

myBooks.append("Pluto")
myBooks.remove(at: 1)

print(myBooks)
