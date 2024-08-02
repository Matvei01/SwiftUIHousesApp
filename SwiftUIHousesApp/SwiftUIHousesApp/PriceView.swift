//
//  PriceView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct PriceView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .frame(width: 82, height: 43)
                .foregroundStyle(.appGray)
            VStack(alignment: .leading, spacing: 8) {
                Text("Студии")
                    .font(.system(size: 10, weight: .regular))
                .foregroundStyle(.appDark)
                Text("от 8 млн ₽")
                    .font(.system(size: 10, weight: .medium))
            }
        }
    }
}

#Preview {
    PriceView()
}
