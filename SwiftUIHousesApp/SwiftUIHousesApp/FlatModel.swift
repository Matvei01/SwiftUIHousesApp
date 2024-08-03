//
//  FlatModel.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 03.08.2024.
//

import Foundation

struct FlatModel: Identifiable {
    let id = UUID()
    let image: String
    
    static func getFlats() -> [FlatModel] {
        [
            FlatModel(image: "flat1"),
            FlatModel(image: "flat2"),
            FlatModel(image: "flat3"),
            FlatModel(image: "flat4"),
            FlatModel(image: "flat5"),
            FlatModel(image: "flat6")
        ]
    }
}
