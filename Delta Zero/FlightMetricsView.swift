//
//  FlightDetail.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

struct FlightMetricsView: View {
    @Binding var flight: Flight
    let columnLayout = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    var body: some View {
        VStack {
            if (flight.metrics.count != 0) {
                if let firstMetric = flight.metrics[0] {
                    MetricView(metric: firstMetric)
                }
                else {
                    Text("No flight information found.")
                }
                LazyVGrid(columns: columnLayout) {
                    ForEach(Array(flight.metrics[1...]), id: \.self) { metric in
                        if let metric {
                            MetricView(metric: metric)
                        }
                    }
                }
            }
        }
        .padding(10)
    }
}
