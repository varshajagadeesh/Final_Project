//
//  BreedListView.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct BreedListView: View {
    @State var breeds: [Breeds] = []
    @State var favorites: [Breeds]=[]
    
    var body: some View {
        
        NavigationStack{
            VStack {
                List(breeds) { breed in
                    
                    NavigationLink {
                        BreedDetailView(breed: breed, favorites: $favorites)
                    } label: {
                        
                        Text(breed.attributes.name).padding(10)
                    }.navigationTitle(Text("Dog Breeds"))
                    
                    
                }.onAppear {
                    Task {
                        do {
                            let response = try await BreedsService.getBreeds()
                            breeds = response.data
                        } catch {
                            print(error)
                        }
                    }
                    
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: FavoritesListView(favorites: favorites)) {
                            Image(systemName: "heart.fill").foregroundStyle(Color.red.opacity(0.8))
                        }
                    }
                }
            }
        }
    }
}
        
#Preview {
            BreedListView()
        }

