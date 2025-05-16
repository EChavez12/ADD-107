import UIKit

var greeting = "Hello, playground"

func displayFibonacciNumbersUpTo1000() {
    
    // I need the first to variables to be the first two Fibonacci numbers 0 and 1.
    var a = 0
    var b = 1
    
    print("Fibonacci numbers up to 1000:")
    
    // This will print the first Fibonacci number, this one being a 0.
    print(a)
    
    // While the next number in the sequence is less than 1000.
    while b < 1000 {
        // Will print the current Fibonacci number.
        print(b)
        
        // This will calculate the next Fibonacci number by adding the previous and current number.
        let next = a + b
        
        // Update the previous two numbers for the next iteration.
        a = b
        b = next
    }
}

displayFibonacciNumbersUpTo1000()
