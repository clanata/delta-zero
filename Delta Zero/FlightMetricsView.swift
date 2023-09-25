//
//  FlightDetail.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

struct Metric {
    let id = UUID()
    let key: KeyPath<Flight, Int>
    let title: String
}

struct FlightMetricsView: View {
    @Binding var flight: Flight
    let columnLayout = [
        GridItem(.adaptive(minimum: 120))
    ]
    let metricKeys = [
        Metric(key: \Flight.seatsAvailable, title: "Seats Available"),
        Metric(key: \Flight.averageSeatsFlownEmptyLastWeek, title: "Average Empty Seats"),
        Metric(key: \Flight.averageStandbysClearedLastWeek, title: "Average Nonrevs Cleared"),
        Metric(key: \Flight.payloadOptimizedDaysLastWeek, title: "Payload Optimized Days")
    ]
    
    var body: some View {
        MetricView(title: "", value: flight.overallNonrevChances)
        LazyVGrid(columns: columnLayout) {
            ForEach(metricKeys, id: \.id) { metric in
                MetricView(title: metric.title, value: "\(flight[keyPath: metric.key])")
            }
        }
    }
}
