//
//  ButtonActionView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct ButtonActionView: View {
    
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(textColor)
        }
        .frame(maxWidth: .infinity, minHeight: 45)
        .background(Color(backgroundColor))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ButtonActionView(
        title: "Button",
        textColor: Color.white,
        backgroundColor: Color.blue
    )
}
