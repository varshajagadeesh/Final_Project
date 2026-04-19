//
//  BreedDetailView.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct BreedDetailView: View {
    
    func isithypoallergenic() -> String {
        let status: Bool = true
        if status == breed.attributes.hypoallergenic {return "This breed is hypoallergenic"}
        return "This breed is NOT hypoallergenic"
        
    }
    
    let breed: Breeds
    @Binding var favorites:[Breeds]
    
    var body: some View {
        NavigationStack{
            ZStack{
               
            
                ScrollView{
                    VStack(alignment: .leading) {
                        
                        Text(breed.attributes.name).font(.largeTitle).bold().padding(5)
                        Text(breed.attributes.description).padding().fixedSize(horizontal: false, vertical: true).background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.05))).frame(width: 325)
                        Text("Breed Facts:").bold().font(.title2)
                        VStack(alignment: .leading) {
                            Text(" \(isithypoallergenic())").padding()
                            Text("Lifespan:").bold().font(.title3)
                            HStack{
                                Text("min: \(breed.attributes.life.min)")
                                
                                Divider().background(Color.gray).frame(width: 10, height:40)
                                
                                Text("max: \(breed.attributes.life.max)")
                            }.padding()
                            
                            Text("Male Weight:").bold().font(.title3)
                            HStack{
                                Text("min: \(breed.attributes.male_weight.min)")
                                Divider().background(Color.gray).frame(width: 10, height:40)
                                Text("max: \(breed.attributes.male_weight.max)")
                            }.padding()
                            
                            Text("Female Weight:").bold().font(.title3)
                            HStack{
                                Text("min: \(breed.attributes.female_weight.min)")
                                Divider().background(Color.gray).frame(width: 10, height:40)
                                Text("max: \(breed.attributes.female_weight.max)")
                            }.padding()
                        }.padding().background(RoundedRectangle(cornerRadius: 12).fill(Color.secondary.opacity(0.05)))
                        
                        Button {
                            
                            var shouldAdd = true
                            
                            for item in favorites {
                                if item.attributes.name == breed.attributes.name {
                                    shouldAdd = false
                                    break
                                }
                            }
                            
                            if shouldAdd {
                                favorites.append(breed)
                            }
                            
                            
                        } label: {
                            Text("Add to Favorites").padding(20).bold().foregroundStyle(.black.opacity(0.8)).background(RoundedRectangle(cornerRadius: 12).fill(Color.red.opacity(0.1)))
                        }
                        
                    }.padding(30)
                    
                    
                    
                }
                    
                    
                
            }
        }
    }
}


#Preview {
    BreedDetailView(
        breed: Breeds( id: "1",
                       attributes: Attributes(name: "Doggie",
                                              description: "a very nice and big dog that i love very very very very much and is so soft and sweet and can run very fast everywhere and is allergic to chocolate .",
                                              hypoallergenic: false,
                                              life: Life( min: 12, max: 15),
                                              male_weight: male_Weight(min: 100, max: 125),
                                              female_weight: female_Weight(min: 90, max: 115),
                                             )
                      
                                               
                     ),  favorites: .constant([] as [Breeds])
)
}
