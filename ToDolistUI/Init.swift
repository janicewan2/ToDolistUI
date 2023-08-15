//
//  ToDoItemsList.swift
//  ToDolistUI
//
//  Created by Conrad Wan on 15/8/2023.
//

import Foundation
class ToDoItem : Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
