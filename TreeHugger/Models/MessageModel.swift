//
//  MessageModel.swift
//  TreeHugger
//
//  Created by Hristo Sandev on 2022-09-12.
//

import Foundation

struct Message: Hashable {
    var content: String
    var user: User
    init(content: String = "", user: User = User()) {
        self.content = content
        self.user = user
    }
}

struct User: Hashable {
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
    init(name: String = "", avatar: String = "", isCurrentUser: Bool = false) {
        self.name = name
        self.avatar = avatar
        self.isCurrentUser = isCurrentUser
    }
}
