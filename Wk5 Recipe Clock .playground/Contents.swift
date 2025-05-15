import UIKit

var greeting = "Hello, playground I'll be making a Clock App Recipe"
//Week 5 Critical Thinking: Recipe: Clock

// First I had to set up the clock variables, so have seconds,minutes, and hours.
var seconds = 0
var minutes = 0
var hours = 0
var isRunning = true

// Then I made the clock go by a second.
while isRunning {
    // Add one second every time.
    seconds += 1
    
    // I had to fix the seconds to minutes, 0-60 seconds.
    if seconds == 60 {
        seconds = 0
        minutes += 1
    }
    
    if minutes == 60 {
        minutes = 0
        hours += 1
    }
    
    if hours == 24 {
        hours = 0
    }
    
    // I switched it so it switches from AM or PM.
    var timeOfDay = "AM"
    var displayHour = hours
    
    if hours >= 12 {
        timeOfDay = "PM"
        if hours > 12 {
            displayHour = hours - 12
        }
    }
    // Change display hour to change the time however you want.
    if hours == 0 {
        displayHour = 10
    }
    
    // Make the numbers look nicer and added 0 before single digits.
    var niceSeconds = "\(seconds)"
    if seconds < 10 {
        niceSeconds = "0\(seconds)"
    }
    
    var niceMinutes = "\(minutes)"
    if minutes < 10 {
        niceMinutes = "0\(minutes)"
    }
    
    
    print("Time: \(displayHour):\(niceMinutes):\(niceSeconds) \(timeOfDay)")
    
    //lets user know if its midnight or noon
    switch (hours, minutes, seconds) {
    case (12, 0, 0):
        print("--> It's noon!")
    case (0, 0, 0):
        print("--> It's midnight!")
    default:
        break
    }
    
    // This will stop clock from going into an infinite loop.
    if seconds >= 10 {
        isRunning = false
        print("Clock has stopped at 10 seconds to prevent an infinite loop from happening.")
    }
}
