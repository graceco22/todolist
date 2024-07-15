//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-05.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold() 
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item) 
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
