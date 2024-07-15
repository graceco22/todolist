//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-05.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
    
}
