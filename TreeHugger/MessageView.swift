//
//  MessageView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import SwiftUI

struct MessageView: View {
    var currentMessage: Message
    var body: some View {
        HStack (alignment: .bottom, spacing: 15) {
            
            if !currentMessage.user.isCurrentUser {
                Image("tree-hug")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                ContentMessageView(ContentMessage: currentMessage.content, isCurrentUser: currentMessage.user.isCurrentUser)
                Spacer()
            } else {
                Spacer()
                ContentMessageView(ContentMessage: currentMessage.content, isCurrentUser: currentMessage.user.isCurrentUser)
            }
            
            
        }
        .padding(10)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(currentMessage: Message(content: "Hello", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: false)))
    }
}
