//
//  ContentMessageView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import SwiftUI

struct ContentMessageView: View {
    var ContentMessage: String
    var isCurrentUser: Bool
    var body: some View {
        Text(ContentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white:Color.black)
            .background(isCurrentUser ? Color.blue: Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
            .cornerRadius(10)
        
    }
}

struct ContentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentMessageView(ContentMessage: "Hello", isCurrentUser: true)
    }
}
