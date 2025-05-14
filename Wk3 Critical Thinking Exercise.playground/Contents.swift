import UIKit
import Foundation

var greeting = "Hello world this is my app that I will be submitting"

func function1() {
    let red = 10
    let blue = 15
    let purple = 25
    
    let choice = 2
    var score = 0
    
    if choice == 1 {
        score += red
        print("You chose the red path, you'll be getting 10 points.")
    }
    
    else if choice == 2 {
        score += blue
        print("You chose the blue path, you'll be getting 15 points.")
    }
    
    else if choice == 3 {
        score += purple
        print("You chose the purple path, you'll be getting 25 points.")
    }
    
    else {
        print("Please choose again.")
    }
}

var drink = "coffee"

drink = "water"

print(drink)

print(function1())
