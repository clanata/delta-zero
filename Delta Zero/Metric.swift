//
//  Metric.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 9/26/23.
//

import SwiftUI

typealias Metric = Flights.GetFlightsQuery.Data.Flight.Metric

extension Metric: Identifiable, Hashable {
    var id: UUID { return UUID() }
}
