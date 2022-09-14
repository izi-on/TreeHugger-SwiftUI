//
//  ChatView.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import SwiftUI

struct ChatView: View {

    @State var typingMessage: String = ""
    @EnvironmentObject var chatHelper: ChatHelper
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                VStack {
                    List {
                        ForEach(chatHelper.realTimeMessages, id: \.self) {msg in
                            MessageView(currentMessage: msg)
                                .listRowSeparator(.hidden)
                        }
                    }
                }
                HStack {
                    TextField("Message...", text: $typingMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        chatHelper.sendMessage(Message(content: typingMessage, user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)))
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
        ChatView()
            .environmentObject(ChatHelper())
    }
}
