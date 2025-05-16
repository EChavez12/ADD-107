import UIKit

var greeting = "Hello, playground"

// Will make a playground that makes us build a prius.
enum PriusColor: String {
    case red = "Red"
    case blue = "Blue"
    case black = "Black"
    case white = "White"
}
// Enumration for the model of the car.
enum PriusModel: String {
    case le = "Prius LE"
    case leAWD = "Prius LE AWD"
    case xle = "Prius XLE"
    case xleAWD = "Prius XLE AWD"
}
// Enumration for the packaged that we want.
enum PriusPackage: String {
    case none = "None"
    case audioMultimedia = "Audio & Multimedia"
    case digitalKey = "Digital Key"
    case everything = "Everything"
}
// Enumration for any desired accesorry.
enum PriusAccessory: String {
    case none = "None"
    case dogCarHarness = "Dog Car Harness"
    case emergencyKit = "Emergency Kit"
    case mudGuards = "Mud Guards"
}
// this will structure how we want the prius color,model, default engine, etc.
struct PriusCar {
    let color: PriusColor
    let model: PriusModel
    let engine: String = "2.0L 4-Cyl Hybrid Engine"
    let package: PriusPackage
    let accessory: PriusAccessory
}

// manages the prius configurations and it holds the inventory of car.
class PriusConfigurator {
    var inventory: [PriusCar] = [
        PriusCar(color: .red, model: .le, package: .none, accessory: .none),
        PriusCar(color: .blue, model: .xle, package: .audioMultimedia, accessory: .mudGuards),
        PriusCar(color: .black, model: .leAWD, package: .digitalKey, accessory: .dogCarHarness),
        PriusCar(color: .white, model: .xleAWD, package: .everything, accessory: .emergencyKit)
    ]
// this will display all cars in inventory.
    func displayInventory() {
        print(" Here's the 2025 Prius Inventory: ")
        for (index, car) in inventory.enumerated() {
            print("""
            \(index + 1). 
            Model: \(car.model.rawValue)
            Color: \(car.color.rawValue)
            Package: \(car.package.rawValue)
            Accessory: \(car.accessory.rawValue)
            """)
        }
    }
}

let configurator = PriusConfigurator()
configurator.displayInventory()
