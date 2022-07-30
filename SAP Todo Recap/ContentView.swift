//
//  ContentView.swift
//  SAP Todo Recap
//
//  Created by LIM YEE SIN RACHEL stu on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todoItems = [
        TodoItem(title: "SST Inc"),
        TodoItem(title: "SAP"),
        TodoItem(title: "SST CM", isDone: true),
    ]
    
    var body: some View {
        NavigationView {
            List(todoItems) { todoItem in
                NavigationLink(destination: TodoDetailView()) {
                    HStack {
                        Image(systemName: todoItem.isDone ? "pawprint.circle.fill" : "pawprint.circle")
                        Text(todoItem.title)
                    }
                }
            }
            .navigationTitle("Todos") // .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
