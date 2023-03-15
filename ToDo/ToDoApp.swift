//
//  ToDoApp.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 14/3/23.
//

import SwiftUI

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            let toDoStorage = ToDoStorage()
            ToDoListView().environmentObject(toDoStorage)
        }
    }
}
