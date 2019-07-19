//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    
    var running = false
    var author = ""
    var distanceTraveled = 0 //currently an int, must change to double in line 37 or assign as double to begin with
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let refuelAmount = maxFuel - fuelLevel
        fuelLevel = 5000.0
        return refuelAmount
        fuelCost = refuelAmount * data.fuelPrices[location]!
    }
    
    func flyTo(destination : String) {
        
        distanceTraveled += distanceTo(home: location, target: destination)
        fuelLevel -= Double(distanceTraveled)*milesPerGallon
        location = destination
    }
    
    // PROBLEM AREA: never actually defined a data variable as the tutorial suggests, but can do so here:
    var data = AviatrixData()
    // also not told about return value but they can figure that out
    
    // STEP 7: NEW VARIABLE LOCATION
    var location = "St. Louis"
    func distanceTo(home: String, target: String) -> Int {
        // STEP 6: ADD KNOWN DISTANCE
        return data.knownDistances[home]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
