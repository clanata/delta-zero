//
//  Metric.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 9/19/23.
//

import SwiftUI

// TODO: add some concept of "goal" to metric and then show the correct color

struct MetricView: View {
    var title: String
    var value: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.green)
                .frame(height: 120)
            VStack {
                Text(String(title))
                    .font(.body)
                    .multilineTextAlignment(.center)
                Text(value)
                    .font(.largeTitle.weight(.bold))
            }
        }
        .foregroundColor(Color.white)
    }
}
