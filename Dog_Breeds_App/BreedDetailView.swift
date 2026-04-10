//
//  BreedDetailView.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct BreedDetailView: View {
    
    let breed: Breeds
    @Binding var favorites:[Breeds]
    var body: some View {
        NavigationStack{
            VStack{
                Text(breed.attributes.name).font(.largeTitle).bold()
                Text(breed.attributes.description).padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                Text("Hypoallergenic? \(breed.attributes.hypoallergenic)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                Text("Lifespan:").bold().font(.title2)
                HStack{
                    Text("min: \(breed.attributes.life.min)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                    Text("max: \(breed.attributes.life.max)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                }
                
                Text("Male Weight:").bold().font(.title2)
                HStack{
                    Text("min: \(breed.attributes.male_weight.min)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                    Text("max: \(breed.attributes.male_weight.max)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                }
                
                Text("Female Weight:").bold().font(.title2)
                HStack{
                    Text("min: \(breed.attributes.female_weight.min)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                    Text("max: \(breed.attributes.female_weight.max)").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                }
                
                Button {
                    favorites.append(breed)
                } label: {
                    Text("Add to Favorites").padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.1)))
                }
                
                
            }
        }
        
    }
}

#Preview {
    BreedDetailView(
        breed: Breeds( id: "1",
                       attributes: Attributes(name: "Doggie",
                                              description: "a very nice and big dog.",
                                              hypoallergenic: false,
                                              life: Life( min: 12, max: 15),
                                              male_weight: male_Weight(min: 100, max: 125),
                                              female_weight: female_Weight(min: 90, max: 115),
                                             )
                      
                                               
                     ),  favorites: .constant([] as [Breeds])
)
}
