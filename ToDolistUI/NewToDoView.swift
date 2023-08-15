//
//  NewToDoView.swift
//  ToDolistUI
//
//  Created by Conrad Wan on 15/8/2023.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems : [ToDoItem]
    @Binding var showNewTask : Bool
    var body: some View{
        VStack{
            Spacer()
            Text("Task Title: ")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            TextField("Enter the task title...", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            //this captures user input
            //When something is added it updates title
            Toggle(isOn: $isImportant) {
                Text("Important Task")
            }
            .padding(20)
            Spacer()
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add Task")
            }
            Spacer()
        } //end of VStack
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
}
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
