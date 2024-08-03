//
//  HousingComplexInfoView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexInfoView: View {
    let name: String
    let price: String
    let address: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(name)
                .boldFont()
            Text(price)
                .boldFont()
            Text(address)
                .font(.system(size: 14, weight: .regular))
        }
        .padding(.horizontal, 18)
    }
}


