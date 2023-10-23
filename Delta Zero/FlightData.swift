//
//  FlightData.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI
import Apollo

class FlightData: ObservableObject {
    @Published var flights: [Flight] = []
    private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:8000/graphql")!)
    
    func fetchFlights() {
        apollo.fetch(query: Flights.GetFlightsQuery()) { result in
            switch result {
                case .success(let result):
                    if let flights = result.data?.flights {
                        self.flights = flights
                    }
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    func sortedFlights() -> Binding<[Flight]> {
        Binding<[Flight]>(
            get: {
                self.flights
                    .sorted { $0.departure < $1.departure }
            },
            set: { flights in
                for flight in flights {
                    if let index = self.flights.firstIndex(where: { $0 == flight }) {
                        self.flights[index] = flight
                    }
                }
            }
        )
    }
}
