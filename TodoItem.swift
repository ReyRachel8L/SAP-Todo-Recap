//
//  TodoItem.swift
//  SAP Todo Recap
//
//  Created by LIM YEE SIN RACHEL stu on 30/7/22.
//

import Foundation

struct TodoItem: Identifiable {         // Protocol identifiable; set of rules to abide by
    
    var id = UUID()
    var title: String
    var isDone = false                  // Boolean
    
}
