//
//  ContentView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-10.
//

import SwiftUI
import MapKit

struct TreeHuggerView: View {

    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label("Menu", systemImage: "map")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TreeHuggerView_Previews: PreviewProvider {
    static var previews: some View {
        TreeHuggerView()
    }
}

