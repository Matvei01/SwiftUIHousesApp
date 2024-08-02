//
//  HousingComplexItemView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexItemView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 14) {
                HousePhotoView(height: 185, cornerRadius: 15, topPadding: 19)
                HousingComplexInfoView()
            }
            HStack(spacing: 6) {
                ForEach(0..<3) { _ in
                    PriceView()
                }
            }
            .padding(.horizontal, 18)
            .padding(.bottom, 26)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    HousingComplexItemView()
}
