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
              seatsAvailable: 5,
              averageSeatsFlownEmptyLastWeek: 1,
              averageStandbysClearedLastWeek: 8,
              payloadOptimizedDaysLastWeek: 0,
              weatherConditions: "Clear",
              overallNonrevChances: "Good to Fly"
        ),
        Flight(
              flight_id: "2590",
              origin: "MSP",
              destination: "LAX",
              departure: "Sep 21 06:15",
              arrival: "Sep 21 8:47",
              seatsAvailable: 19,
              averageSeatsFlownEmptyLastWeek: 13,
              averageStandbysClearedLastWeek: 18,
              payloadOptimizedDaysLastWeek: 0,
              weatherConditions: "Clear",
              overallNonrevChances: "Good to Fly"
        ),
        Flight(
              flight_id: "9375",
              origin: "SEA",
              destination: "BOS",
              departure: "Sep 21 12:09",
              arrival: "Sep 21 6:10",
              seatsAvailable: -3,
              averageSeatsFlownEmptyLastWeek: 0,
              averageStandbysClearedLastWeek: 1,
              payloadOptimizedDaysLastWeek: 4,
              weatherConditions: "Clear",
              overallNonrevChances: "Not Good to Fly"
        ),
        Flight(
              flight_id: "4061",
              origin: "MIA",
              destination: "SLC",
              departure: "Sep 22 14:41",
              arrival: "Sep 22 15:27",
              seatsAvailable: 0,
              averageSeatsFlownEmptyLastWeek: 4,
              averageStandbysClearedLastWeek: 8,
              payloadOptimizedDaysLastWeek: 1,
              weatherConditions: "Clear",
              overallNonrevChances: "Good to Fly"
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
