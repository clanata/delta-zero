//
//  FlightList.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

struct FlightListView: View {
    @EnvironmentObject var flightData: FlightData
    
    var body: some View {
        VStack() {
            ForEach(flightData.sortedFlights(), id:\.self) { $flight in
                FlightInfoView(flight: $flight)
                Divider()
            }
        }
        .onAppear {
            flightData.fetchFlights()
        }
    }
}
