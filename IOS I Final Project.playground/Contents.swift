import UIKit

enum TripType {
    case future
    case past
    case summer
}

struct Destination {
    let name: String
    let type: TripType
    
    var dates: String? // Both properties are for Future trip
    var duration: String?
    
    var rating: Int? // 1-10 scale /
    var opinion: String?
    
    var hotel: String?
    var flightPrice: Double?
    
    // Traveling advice
    func getTravelAdvice() -> String {
        switch name.lowercased() {
        case let x where x.contains("Madrid"):
            return "If you're a soccer fan you need to visit El Bernabeu, that's Real Madrid stadium."
        case let x where x.contains("Tokyo"):
            return "Try to be more respectful, they have different customs and manners. "
        case let x where x.contains("Baja"):
            return "Don't forget to pack sunscreenn! Just kidding, but try to see the whales."
        case let x where x.contains("Lima"):
            return "Food recommendation, try some anticuchos."
        case let x where x.contains("Cusco"):
            return "Altitude there is high, so make sure to take breaks and catch your breath."
        default:
            return "General advice: Learn basic phrases and be respectful of local customs."
        }
    }
    
    func displayDetails() {
        print("\n Location: \(name.uppercased())")
        
        switch type {
        case .future:
            print("Dates: \(dates ?? "TBD")")
            print("Duration: \(duration ?? "TBD")")
            
        case .past:
            print("Rating: \(rating ?? 0)/10")
            print("My personal opinion: \(opinion ?? "No opinion yet")")
            
        case .summer:
            print("Hotel: \(hotel ?? "Not booked yet")")
            if let price = flightPrice {
                print("Flight Price: $\(price)")
            }
        }
        
        print("Travel Tip: \(getTravelAdvice())")
    }
}

class TravelTracker {
    private var destinations: [Destination] = []
    
    func addFutureTrip(name: String, dates: String, duration: String) {
        let trip = Destination(name: name, type: .future, dates: dates, duration: duration)
        destinations.append(trip)
    }
    
    func addPastTrip(name: String, rating: Int, opinion: String) {
        let trip = Destination(name: name, type: .past, rating: rating, opinion: opinion)
        destinations.append(trip)
    }
    
    func addSummerTrip(name: String, hotel: String, flightPrice: Double?) {
        let trip = Destination(name: name, type: .summer, hotel: hotel, flightPrice: flightPrice)
        destinations.append(trip)
    }
    //Get advice from any city.
    func getAdvice(for location: String) -> String? {
        return destinations.first { $0.name.lowercased().contains(location.lowercased()) }?.getTravelAdvice()
    }
    
    func displayTrips(type: TripType) {
        let filtered = destinations.filter { $0.type == type }
        
        switch type {
        case .future:
            print("\n Future Trips")
        case .past:
            print("\n Past Trips")
        case .summer:
            print("\n Incoming Summer Trips ")
        }
        
        for trip in filtered {
            trip.displayDetails()
            print()
        }
    }
}

let tracker = TravelTracker()

tracker.addFutureTrip(name: "Madrid, Spain",
                     dates: "July 15-30, 2024",
                     duration: "2 weeks")

tracker.addFutureTrip(name: "Tokyo, Japan",
                     dates: "November 1-14, 2024",
                     duration: "2 weeks")

tracker.addPastTrip(name: "Baja California, Mexico",
                   rating: 10,
                   opinion: "Amazing beaches, food and the culture.")

tracker.addPastTrip(name: "Lima, Peru",
                   rating: 9,
                   opinion: "Beautiful views, delicious food and friendly people.")

tracker.addSummerTrip(name: "Cusco Peru",
                     hotel: "Full of history and the food is amazing.",
                     flightPrice: 725.00)

tracker.addSummerTrip(name: "Madrid, Spain",
                     hotel: "Beautiful city, place where my favorite fubol club plays at.",
                     flightPrice: 650.00)

tracker.displayTrips(type: .future)
tracker.displayTrips(type: .past)
tracker.displayTrips(type: .summer)


print("\n Special arvice:")
print("Madrid advice: \(tracker.getAdvice(for: "Madrid") ?? "None")")
print("Cusco advice: \(tracker.getAdvice(for: "Cusco") ?? "None")")
