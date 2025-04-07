//
//  NewItemViewModel.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

//viewmodel for a single item (each row in list)
import Foundation
class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var genres = ""
    @Published var rating = ""
    @Published var comments = ""

    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        return true
    }
}
