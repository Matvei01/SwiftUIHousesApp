//
//  HousingComplexItemView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexItemView: View {
    let housingComplex: HousingComplexModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 14) {
                HousePhotoView(
                    imageName: housingComplex.image,
                    height: 185,
                    cornerRadius: 15,
                    topPadding: 19
                )
                HousingComplexInfoView(
                    name: housingComplex.name,
                    price: housingComplex.price,
                    address: housingComplex.address
                )
            }
            HStack(spacing: 6) {
                ForEach(housingComplex.roomTypes, id: \.numberOfRooms) { room in
                    PriceView(roomType: room.numberOfRooms, price: room.price)
                }
            }
            .padding(.horizontal, 18)
            .padding(.bottom, 26)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
