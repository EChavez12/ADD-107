import UIKit

var greeting = "Hello, playground"
// Week 8: Bill's burger bistro

// Greeting message explaining the menu and that custom burgers are of an additional charge.
print("Welcome to Bill's gourmet burger bistro!")
print("------------------------------------")
print("Here's the menu:")
print("(Warning: If you'd like a customized burger ask your server, an additional charge will apply and vary depending on your options.)")

// Enumeration for the number of patties.
enum BurgerSize: String {
    case single = "Single"
    case double = "Double"
    case triple = "Triple"
}

// Enumration for the toppings.
enum Topping: String {
    case cheese = "Cheese"
    case tomato = "Tomato"
    case bacon = "Bacon"
    case avocado = "Avocado"
    case jalapeno = "Jalapeño"
}

// Enumeration for the sauces.
enum Sauce: String {
    case ketchup = "Ketchup"
    case mayo = "Mayonnaise"
    case bbq = "BBQ"
    case special = "Bill's special sauce"
}

// The structure for how the burgers are set up.
struct Burger {
    let name: String
    let description: String
    let size: BurgerSize
    let toppings: [Topping]
    let sauce: Sauce?
    let price: Double
    
    // This function will print the burgers details.
    func printDetails() {
        print("The Burger \(name) (\(size)) costs - $\(price)")
        print("   \(description)")
        print("   Toppings: \(toppings.map { "\($0)" }.joined(separator: ", "))")
        
        if let selectedSauce = sauce {
            print("   Sauce: \(selectedSauce)")
        } else {
            print("   Sauce: None")
        }

    }
}

// Heres a fixed menu with set burger types.
let classicBurger = Burger(
    name: "The Bill's Classic",
    description: "A classic single beef patty with traditional topings such as cheese, tomato, and bacon.",
    size: .single,
    toppings: [.cheese, .tomato, .bacon],
    sauce: .ketchup,
    price: 8.99
)

let VeggieBurger = Burger(
    name: "Paradise Veggie",
    description: "Green made patty with fresh ingredients and for those who want a more vegan route.",
    size: .double,
    toppings: [.avocado, .cheese, .tomato],
    sauce: .mayo,
    price: 8.69
)

let SpicyBurger = Burger(
    name: "The Red Devil",
    description: "For those who want a challange! This burger features a beef patty topped with bacon, cheese, and roasted jalapeno slices and our signature special sauce.",
    size: .double,
    toppings: [.cheese, .jalapeno, .bacon],
    sauce: .special,
    price: 10.50
)

let TheBillBurger = Burger(
    name: "The Big Bill Burger",
    description: "Our specialty burger perfectly crafted, The Big Bill burger includes three patties, cheese, bacon, tomato, and avocado.",
    size: .triple,
    toppings: [.cheese, .bacon, .tomato, .avocado],
    sauce: .bbq,
    price: 12.99
)

print("==== BILL'S MENU ====")
classicBurger.printDetails()
VeggieBurger.printDetails()
SpicyBurger.printDetails()
TheBillBurger.printDetails()
print("For custom burger options, please ask at the counter.")
print("Custom burgers start at $7.99 plus addtional charges for toppings($1 each), sauces($0.65 each), and amount of patties($2 each).")
print("=================================")


