//
//  TreeView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-11.
//

import SwiftUI

struct TreeView: View {
    var body: some View {
        Image("tree-hug")
            .resizable()
            .frame(width: 30, height: 30)
    }
}

struct TreeView_Previews: PreviewProvider {
    static var previews: some View {
        TreeView()
    }
}
