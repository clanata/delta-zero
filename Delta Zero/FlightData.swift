//
//  FlightData.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

// TODO: get flight data from a mock data server

class FlightData: ObservableObject {
    @Published var flights: [Flight] = [
        Flight(
              flight_id: "1234",
              origin: "ATL",
              destination: "JFK",
              departure: "Sep 19 16:35",
              arrival: "Sep 19 18:06",
              metrics: [
                Metric(value: "Good to Fly", status: .low),
                Metric(label: "Seats Available", value: "5", status: .low),
                Metric(label: "Historic Seats Available", value: "3", status: .medium),
                Metric(label: "Days Payload Optimized", value: "0", status: .low),
                Metric(label: "Weather", value: "Clear", status: .low)
              ]
        ),
        Flight(
              flight_id: "2590",
              origin: "MSP",
              destination: "LAX",
              departure: "Sep 21 06:15",
              arrival: "Sep 21 8:47",
              metrics: [
                Metric(value: "Not Good to Fly", status: .high),
                Metric(label: "Seats Available", value: "-3", status: .high),
                Metric(label: "Historic Seats Available", value: "0", status: .high),
                Metric(label: "Days Payload Optimized", value: "0", status: .low),
                Metric(label: "Weather", value: "Windy", status: .medium)
              ]
        ),
        Flight(
              flight_id: "9375",
              origin: "SEA",
              destination: "BOS",
              departure: "Sep 21 12:09",
              arrival: "Sep 21 6:10",
              metrics: [
                Metric(value: "Fly with Caution", status: .medium),
                Metric(label: "Seats Available", value: "18", status: .low),
                Metric(label: "Historic Seats Available", value: "13", status: .medium),
                Metric(label: "Days Payload Optimized", value: "4", status: .high),
                Metric(label: "Weather", value: "Clear", status: .low)
              ]
        ),
        Flight(
              flight_id: "4061",
              origin: "MIA",
              destination: "SLC",
              departure: "Sep 22 14:41",
              arrival: "Sep 22 15:27",
              metrics: [
                Metric(value: "Good to Fly", status: .low),
                Metric(label: "Seats Available", value: "7", status: .low),
                Metric(label: "Historic Seats Available", value: "9", status: .medium),
                Metric(label: "Days Payload Optimized", value: "0", status: .low),
                Metric(label: "Weather", value: "Clear", status: .low)
              ]
        )
    ]
    
    func sortedFlights() -> Binding<[Flight]> {
        Binding<[Flight]>(
            get: {
                self.flights
                    .sorted { $0.departure < $1.departure }
            },
            set: { flights in
                for flight in flights {
                    if let index = self.flights.firstIndex(where: { $0.id == flight.id }) {
                        self.flights[index] = flight
                    }
                }
            }
        )
    }
}
