//
//  ContentView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-10.
//

import SwiftUI
import MapKit

struct TreeHuggerView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

        var body: some View {
            Map(coordinateRegion: $region)
        }
}

struct TreeHuggerView_Previews: PreviewProvider {
    static var previews: some View {
        TreeHuggerView()
    }
}
