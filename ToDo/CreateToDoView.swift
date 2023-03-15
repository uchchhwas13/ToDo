//
//  CreateToDoView.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 15/3/23.
//

import SwiftUI

struct CreateToDoView: View {
    @State var toDoTitle = ""
    var body: some View {
        TextField("Add to do items", text:$toDoTitle)
    }
}

struct CreateToDoView_Previews: PreviewProvider {
    static var previews: some View {
        CreateToDoView()
    }
}
