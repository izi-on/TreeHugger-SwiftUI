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
