//
//  Metric.swift
//  Delta Zero
//
//  Created by Lanata, Cameron T on 9/26/23.
//

import SwiftUI

enum Status {
    case low
    case medium
    case high
}

struct Metric: Identifiable, Hashable {
    var id = UUID()
    var label: String = ""
    var value: String = ""
    var status: Status = .low
}
