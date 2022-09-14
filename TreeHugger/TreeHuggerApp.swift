//
//  TreeHuggerApp.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-10.
//

import SwiftUI

@main
struct TreeHuggerApp: App {
    var body: some Scene {
        let chatHelper = ChatHelper()
        WindowGroup {
            NavigationView {
                TreeHuggerView()
            }
            .environmentObject(chatHelper)
        }
    }
}

