//
//  ContentView.swift
//  ToDolistUI
//
//  Created by Conrad Wan on 15/8/2023.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems : [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {
                    //what the button does
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.title)
            } //end of button
            } //end of HStack
            Spacer()
            .padding()
        } //end of VStack
        .padding()
        List{
            ForEach(toDoItems){ toDoItem in
                if toDoItem.isImportant == true {
                    Text("!!" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
            }
        } // end of List
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
