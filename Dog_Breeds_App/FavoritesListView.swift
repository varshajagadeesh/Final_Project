//
//  FavoritesListView.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct FavoritesListView: View {
    let favorites: [Breeds]
    @State var title: String = ""
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.1).ignoresSafeArea()
            VStack{
                TextField("Favorites", text: $title).padding().font(Font.largeTitle).bold().background(RoundedRectangle(cornerRadius: 12).fill(Color.white)).frame(width:375)
                
                List(favorites, id: \.id) { breed in
                    Text(breed.attributes.name)
                }.scrollContentBackground(.hidden)
            }
        }
         
    }
}

#Preview{
    FavoritesListView(favorites: [])
}
