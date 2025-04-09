//
//  MediaItemView.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import SwiftUI

struct MediaItemView: View {
    let item: MediaItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)

                Text(item.genre)
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
        }
    }
}

struct MediaItemView_Previews: PreviewProvider {
    static var previews: some View {
        MediaItemView(item: .init(
            id: "123",
            title: "PlaceholderName",
            genre: "Action, Tragedy",
            comments: "Broke my heart </3"))
    }
}
