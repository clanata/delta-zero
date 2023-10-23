//
//  Metric.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 9/19/23.
//

import SwiftUI

func getStatusColor(status: Int) -> Color {
    switch status {
        case 0:
            return Color.green
        case 1:
            return Color.yellow
        case 2:
            return Color.red
        default:
            return Color.gray
    }
}

struct MetricView: View {
    var metric: Metric

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(getStatusColor(status: metric.status))
                .frame(height: 120)
            VStack {
                Text(String(metric.label))
                    .font(.body)
                    .multilineTextAlignment(.center)
                Text(metric.value)
                    .font(.largeTitle.weight(.bold))
            }
        }
        .foregroundColor(Color.white)
    }
}
