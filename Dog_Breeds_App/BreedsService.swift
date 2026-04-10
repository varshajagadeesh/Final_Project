//
//  BreedsService.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

class BreedsService {
    
    static func getBreeds() async throws -> mainData {
        let url = URL(string: "https://dogapi.dog/api/v2/breeds")!
        
        do {
           
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(mainData.self, from: data)
            return response
        } catch {
            print(error.localizedDescription)
            throw error
        }
    }
    
    
    
}


