//
//  TodoDetailView.swift
//  SAP Todo Recap
//
//  Created by LIM YEE SIN RACHEL stu on 30/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todoItem: TodoItem     // modifying someone's state variable
    
    var body: some View {
        Form {
            TextField("Title of todo", text: $todoItem.title)
            Section {
                Button(todoItem.isDone ? "Mark as not done" : "Mark as done") {
                    todoItem.isDone.toggle()
                    print(todoItem)
                }
                .foregroundColor(todoItem.isDone ? .red : .green)
            }
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todoItem: .constant(TodoItem(title: "Sample todo item")))
    }
}
