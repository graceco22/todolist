//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-04.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
