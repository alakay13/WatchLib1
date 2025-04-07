//
//  LibraryView.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var viewModel = LibraryViewViewModel()
    
    private let userID: String
    init(userID: String) {
        self.userID = userID

    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                
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
