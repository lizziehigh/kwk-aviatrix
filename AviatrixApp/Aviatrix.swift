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
    
    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
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
