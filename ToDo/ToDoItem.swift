//
//  ToDoItem.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 14/3/23.
//

import Foundation

struct ToDoItem: Identifiable {
    var id = UUID()
    var title: String
    var important:Bool
    init(title:String, important:Bool) {
        self.title = title
        self.important = important
    }
}
