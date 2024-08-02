//
//  HousePhotoView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousePhotoView: View {
    
    let height: CGFloat
    var cornerRadius: CGFloat? = nil
    var topPadding: CGFloat
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(.houses1)
                .resizable()
                .frame(height: height)
                .clipShape(
                    RoundedRectangle(cornerRadius: cornerRadius ?? 0)
                )
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .foregroundStyle(.white)
                Image(systemName: "bookmark")
                    .foregroundStyle(.blue)
                
            }
            .frame(width: 29, height: 29)
            .padding(.top, topPadding)
            .padding(.trailing, 19)
            
        }
    }
}

#Preview {
    HousePhotoView(height: 200, topPadding: 19)
}
