//
//  Trees.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-11.
//

import Foundation
import MapKit

struct TreeLocation: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
    }
}

extension TreeLocation {
    static var sampleData: [TreeLocation] = [
        TreeLocation(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E51")!, lat: 45.505, long: -73.5747),
        TreeLocation(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E52")!, lat: 45.507, long: -73.5751),
        TreeLocation(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E53")!, lat: 45.502, long: -73.5735)

    ]
}
