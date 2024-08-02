//
//  HousingComplexInfoView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Ольховый Квартал")
                .font(.system(size: 22, weight: .bold))
            Text("от 8 029 445 ₽")
                .font(.system(size: 22, weight: .bold))
            Text("Москва, поселение Сосенское, деревня Столбово")
                .font(.system(size: 14, weight: .regular))
        }
        .padding(.horizontal, 18)
    }
}

#Preview {
    HousingComplexInfoView()
}
