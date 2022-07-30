//
//  ContentView.swift
//  SAP Todo Recap
//
//  Created by LIM YEE SIN RACHEL stu on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var todoItems = [
        TodoItem(title: "Walk the chicken"),
        TodoItem(title: "Feed the potato"),
        TodoItem(title: "Scam the class"),
    ]
    
    var body: some View {
        List(todoItems) { todoItem in
            Text(todoItem.title)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
