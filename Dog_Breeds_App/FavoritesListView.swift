//
//  FavoritesListView.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct FavoritesListView: View {
    let favorites: [Breeds]
    @State private var title: String = ""
    
    var body: some View {
        TextField("My favorites", text: $title).padding().font(Font.largeTitle).bold()
        
        List(favorites, id: \.id) { breed in
            Text(breed.attributes.name)
        }
        
     
         
    }
}

#Preview{
    FavoritesListView(favorites: [])
}
