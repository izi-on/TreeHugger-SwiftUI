//
//  TreeView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-11.
//

import SwiftUI

struct TreeView: View {
    @Binding var treeData: TreeLocation
    @Binding var selected: UUID
    @State private var scale = 1.0
    
    var body: some View {
        Button(action: {
            //handle click animation
            if selected == treeData.id {
                scale -= 1
                selected = UUID()
            } else {
                scale += 1
                selected = treeData.id
            }
            
        }) {
            Image("tree-hug")
                .resizable()
                .frame(width: 30, height: 30)
        }
        .scaleEffect(scale)
        .animation(.spring(), value: scale)
        
    }
}

struct TreeView_Previews: PreviewProvider {
    static var previews: some View {
        TreeView(treeData: .constant(TreeLocation(lat: 45.505, long: -73.5747)), selected: .constant(UUID()))
    }
}
