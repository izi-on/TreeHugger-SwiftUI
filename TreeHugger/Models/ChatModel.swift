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
    
    func sendMessage(chatMessage: Message, treeId: UUID) {
        let correspondingTreeIndex = realTimeMessages.indices.filter{realTimeMessages[$0].id == treeId}.first
        realTimeMessages[correspondingTreeIndex!].messages.append(chatMessage)
        didChange.send(())
    }
    
    func getMessages(treeId: UUID) -> TreeMessageBundle {
        let correspondingTreeIndex = realTimeMessages.indices.filter{realTimeMessages[$0].id == treeId}.first
        return realTimeMessages[correspondingTreeIndex!]
    }
}



struct DataSource {
    static let sampleData: [TreeMessageBundle] = [
        
        TreeMessageBundle(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E51")!, messages: [
            Message(content: "Hello, how is it going", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
            Message(content: "I am good, and you", user: User(name: "Izi", avatar: "tree-hug", isCurrentUser: false)),
            Message(content: "Noice", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
        ]),
        
        TreeMessageBundle(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E52")!, messages: [
            Message(content: "Bruuhhh", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
            Message(content: "Srsly", user: User(name: "Izi", avatar: "tree-hug", isCurrentUser: false)),
            Message(content: "No", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: true)),
        ]),
        
        TreeMessageBundle(id: UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E53")!, messages: [
            Message(content: "Hello im alone", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: false)),
            Message(content: "is anyone there", user: User(name: "Izi", avatar: "tree-hug", isCurrentUser: false)),
            Message(content: "Rip", user: User(name: "Hristo", avatar: "tree-hug", isCurrentUser: false)),
        ]),
    ]
}



