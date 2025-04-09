//
//  NewItemViewModel.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

//viewmodel for a single item (each row in list)
import FirebaseAuth
import FirebaseFirestore
import Foundation
class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var genres = ""
    @Published var rating = ""
    @Published var comments = ""

    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        //Get current user ID
        guard let uID = Auth.auth().currentUser?.uid else {
            return
        }
        
        //Create model
        let newId = UUID().uuidString
        
        let newItem = MediaItem (
        id: newId,
        title: title,
        genre: genres,
        comments: comments
    )
        
        
        //Save model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uID)
            .collection("library")
            .document("123")
            .setData(newItem.asDictionary())
                //Form of a dictionary
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        return true
    }
}
