//
//  LibraryView.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//
import FirebaseFirestore
import SwiftUI

struct LibraryView: View {
    @StateObject var viewModel = LibraryViewViewModel()
    @FirestoreQuery var items: [MediaItem]
    
    init(userID: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userID)/mediaItems")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    MediaItemView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
    
            .navigationTitle("Library")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(userID: "")
    }
}
