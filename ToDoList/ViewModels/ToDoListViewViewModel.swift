//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-05.
//

import Foundation

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    init() {}
    
    func delete(id: String) {
        
    }
}
