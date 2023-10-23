//
//  FlightInfoView.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 9/19/23.
//

import SwiftUI

struct FlightInfoView: View {
    @Binding var flight: Flight

    var body: some View {
        NavigationLink {
            FlightMetricsView(flight: $flight)
        } label: {
            HStack() {
                VStack() {
                    HStack {
                        Text(flight.origin + " - " + flight.destination)
                        Spacer()
                    }
                    HStack {
                        Text(flight.departure + " - " + flight.arrival)
                        Spacer()
                    }
                    HStack {
                        Text(flight.flightNumber)
                        Spacer()
                    }
                }
                Spacer()
                VStack() {
                    Image(systemName: "chevron.right")
                }
            }
            .padding(10)
        }
        .foregroundColor(Color.black)
    }
}
