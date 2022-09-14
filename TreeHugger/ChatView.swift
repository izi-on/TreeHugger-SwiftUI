//
//  ChatView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import SwiftUI

struct ChatView: View {

    var treeId: UUID
    @State var typingMessage: String = ""
    @EnvironmentObject var chatHelper: ChatHelper
    
    
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                let chatMessages = chatHelper.getMessages(treeId: treeId)
                VStack {
                    List {
                        ForEach(chatMessages.messages, id: \.self) {msg in
                            MessageView(currentMessage: msg)
                                .listRowSeparator(.hidden)
                        }
                    }
                }
                HStack {
                    TextField("Message...", text: $typingMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        chatHelper.sendMessage(chatMessage: Message(content: typingMessage, user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)), treeId: chatMessages.id)
                        typingMessage = ""
                    }) {
                        Text("Send message")
                    }
                }
            }
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(treeId: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E51")!)
            .environmentObject(ChatHelper())
    }
}
