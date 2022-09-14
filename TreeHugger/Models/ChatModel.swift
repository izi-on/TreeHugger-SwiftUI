//
//  ChatModel.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import Foundation
import Combine
import SwiftUI


class ChatHelper : ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    @Published var realTimeMessages = DataSource.sampleData
    
    func sendMessage(_ chatMessage: Message) {
        realTimeMessages.append(chatMessage)
        didChange.send(())
    }
}


//for testing:
struct DataSource {
    static let sampleData: [Message] = [
        Message(content: "Hello, how is it going", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
        Message(content: "I am good, and you", user: User(name: "Izi", avatar: "tree-hug", isCurrentUser: false)),
        Message(content: "Noice", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
    ]
}



