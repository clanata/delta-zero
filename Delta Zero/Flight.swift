//
//  Flight.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

// TODO: refactor this so that Flight has a list of Metrics to make displaying / adding metrics easier

struct Flight: Identifiable, Hashable {
    var id = UUID()
    
    var flight_id: String = ""
    var origin: String = ""
    var destination: String = ""
    var departure: String = ""
    var arrival: String = ""
    var seatsAvailable: Int = 0
    var averageSeatsFlownEmptyLastWeek: Int = 0
    var averageStandbysClearedLastWeek: Int = 0
    var payloadOptimizedDaysLastWeek: Int = 0
    var weatherConditions: String = ""
    var overallNonrevChances: String = ""
}
