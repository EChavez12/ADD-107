import UIKit

var greeting = "Hello, playground"
// Asked chat gtp for ideas, I was interested in between a sleep tracker, water intake,and a to do list.
// Decied to work on a daily tracker for how much water I need to reach a goal.
func checkWater(amount: Int, completion: (String) -> Void) {
    //I set certain milestones that depending on how much you drinked it will tell you something different.
    if amount < 500 {
        completion("🚰 Drink more! You only had \(amount)mL.")
    } else if amount < 2000 {
        completion("💧 Good job! You drank \(amount)mL.")
    } else {
        completion("🌊 Awesome! You had \(amount)mL—stay hydrated!")
    }
}

// If you dont drink enough it will remind you to drink later.
let remindLater = {
    print("⏰ Reminder: Drink more water in 1 hour!")
}

checkWater(amount: 750) { message in
    print(message) // This will print the water status.
    remindLater() 
}

