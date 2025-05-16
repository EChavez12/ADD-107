import UIKit

var greeting = "Hello, playground"

func Fibonacci(max: Int) -> [Int] {
    var a = 0, b = 1, c = 0
    var fib = [a, b]
    
    while c < max {
        c = a + b
        if c <= max {
            fib.append(c)
        }
        a = b
        b = c
    }
    
    return fib
}

print(Fibonacci(max: 1000))

