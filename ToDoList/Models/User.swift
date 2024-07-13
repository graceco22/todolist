//
//  User.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-05.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
