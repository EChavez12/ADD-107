import UIKit

var greeting = "Hello, playground today I'll be making a list on the Chicago Blackhawks."
// The Chicago Blackhawks Lab

//var Players: [String: Int] = ["Connor Bedard": 98(Foward), "Tyler Bertuzzi": 59(Foward), "Jason Dickinson": 16(Foward), "Ryan Donato": 8(Foward), "Frank Nazar": 91(Foward), "Lukas Reichel": 73(Foward), "TJ Brodie": 78(Defense), "Louis Crevier": 46(Defense), "Wyatt Kaiser": 44(Defense), "Sam Rinzel": 6(Defense), "Spencer Knight": 30(Goalie)]

// This sorted array is an int which uses their jersey # and then a string to their name.
var Players: [Int: String] = [98: "Connor Bedard", 59: "Tyler Bertuzzi", 16: "Jason Dickinson", 8: "Ryan Donato", 91: "Frank Nazar", 73: "Lukas Reichel", 78: "TJ Brodie", 46: "Louis Crevier", 44: "Wyatt Kaiser", 6: "Sam Rinzel", 30: "Spencer Knight"]


// Players are sorted by their jersey number.
let sortedArray = Players.sorted( by: { $0.0 < $1.0 })
print("Blackhawk players sorted by their Jersey #\n",sortedArray)
// Players Age are being Sorted.
// Number on the left on the dictionary are the player's number and the num on the right is their age.
var PlayersAge: [Int: Int] = [98: 19, 59: 30, 16: 29, 8:29, 91:21, 73:22, 78:34, 46:24, 44:22, 6:20, 30:24]
let sortedArray2 = PlayersAge.sorted( by: { $0.1 < $1.1 })
print("\nBlackhawks player sorted by their age\n",sortedArray2)

// Players will be sorted by their home country.
var PlayersCountry: [Int: String] = [98: "CAN", 59:"CAN", 16: "CAN", 8:"USA", 91:"USA", 73:"DEU", 78:"CAN", 46:"CAN", 44:"USA", 6:"USA", 30:"USA"]
let sortedArray3 = PlayersCountry.sorted { $0.value < $1.value }
print("\nBlackhawk players sorted by their country\n",sortedArray3)

// Will make the Avg Age of the Blackhawks.
var sum = 0

for value in PlayersAge.values {
    sum += value
}
print("\nThe average age is:", sum / 11)

// Avg Height of the players both in inches and then converted to 0 ft'0 in.
let PlayersHeight = [70, 74.4, 74.4, 72, 70, 72, 74.4, 81.6, 72, 76.8, 75.6]
var sumHeight = 0.0

for height in PlayersHeight {
    sumHeight += height
}
var avgHeight = sumHeight / 11 // avg teams height in inches divided by the 11 players
var avgHeightFt = avgHeight / 12 // converting 12inches = 1ft
let formattedAvgHeight = String(format: "%.2f", avgHeight)
let formattedAvgHeightFt = String(format: "%.2f", avgHeightFt) // formats the decimal value to the second decimal point
print("The average Blackhawk player's height is:", formattedAvgHeight, "inches.")
print("The average Blackhawk player's height in ft is:" ,formattedAvgHeightFt, "ft")
//
// stores the player's birth month.
var PlayersBirthMonth: [Int: String] = [98:"JUL", 59:"FEB", 16:"JUL", 8:"APR", 91:"JAN", 73:"MAY", 78:"JUN", 46:"MAY", 44:"JUL", 6:"JUN", 30:"APR"]

var countByMonth: [String: Int] = [:]

for (_, month) in PlayersBirthMonth {
    countByMonth[month] = (countByMonth[month] ?? 0) + 1
}

print("Blackhawk players birthday counts by month:", countByMonth)

if let mostCommonMonth = countByMonth.max(by: { $0.value < $1.value }) {
    print("\n The most common birth month for the Blackhawks players is \(mostCommonMonth.key) with \(mostCommonMonth.value) players.")
} else {
    print("\nNo birth month has been found.")
}
