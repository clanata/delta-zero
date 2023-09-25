//
//  SearchView.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 8/28/23.
//

import SwiftUI

struct SearchView: View {
    @State private var destination: String = ""
    @State private var origin: String = ""
    @State private var date = Date()
    
    func onSearch() {
        print("search")
    }

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("From")
                        .padding()
                    Spacer()
                }
                TextField(
                    "Origin",
                    text: $origin
                )
                .disableAutocorrection(true)
                .padding()
            }
            VStack {
                HStack {
                    Text("To")
                        .padding()
                        .fixedSize()
                    Spacer()
                }
                TextField(
                    "Destination",
                    text: $destination
                )
                .disableAutocorrection(true)
                .padding()
            }
            HStack {
                DatePicker(
                    "Depart",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .padding()
            }
            Spacer()
            Button(action: onSearch) {
                NavigationLink(destination: FlightListView()) {
                    Text("Search")
                        .foregroundColor(Color.black)
                }
            }
            Spacer()
        }
        .textFieldStyle(.roundedBorder)
        .buttonStyle(.bordered)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
