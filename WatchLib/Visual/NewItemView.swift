//
//  NewItemView.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 41))
                .bold()
                .padding(.top, 100)
            
            Form {
                //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Genres
                TextField("Genres", text: $viewModel.genres)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Rating
                TextField("Rating", text: $viewModel.rating)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Comments
                TextField("Comments", text: $viewModel.comments)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Button
                WLButton(title: "Save",
                         ackground: .red) {
                        viewModel.save()
                        newItemPresented = false
                }
                         .padding()
            }

            }
        }
    }


struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
            
        }))
    }
}
