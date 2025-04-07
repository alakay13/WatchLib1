//
//  WLButton.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import SwiftUI

struct WLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    WLButton(title: "Value", background: .pink){
        //Action
    }
}
