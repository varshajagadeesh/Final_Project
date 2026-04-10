//
//  Models.swift
//  Dog_Breeds_App
//
//  Created by Varsha Jagadeesh on 4/10/26.
//

import SwiftUI

struct Life: Codable {
    let min: Int
    let max: Int
    
}

struct male_Weight: Codable {
    let min: Int
    let max: Int
}

struct female_Weight: Codable {
    let min: Int
    let max: Int
}

struct Attributes: Codable {
    let name: String
    let description: String
    let hypoallergenic: Bool
    let life: Life
    let male_weight: male_Weight
    let female_weight: female_Weight
    
}
struct Breeds: Codable, Identifiable {
    let id: String
    let attributes: Attributes
}

struct mainData: Codable {
    let data: [Breeds]
}





