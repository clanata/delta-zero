//
//  Delta_ZeroApp.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

@main
struct Delta_ZeroApp: App {
    @StateObject private var flightData = FlightData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SearchView()
            }
            .environmentObject(flightData)
            .preferredColorScheme(.light)
        }
    }
}
