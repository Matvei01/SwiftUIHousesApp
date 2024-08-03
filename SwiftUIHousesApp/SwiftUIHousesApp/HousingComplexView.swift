//
//  HousingComplexView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexView: View {
    @Environment(\.dismiss) var dismiss
    
    let flats: [FlatModel]
    let housingComplex: HousingComplexModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 35) {
                    VStack(alignment: .leading, spacing: 21) {
                        HousePhotoView(
                            imageName: housingComplex.image,
                            height: 421,
                            topPadding: 68
                        )
                        VStack {
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
                    }
                    ApartmentFinishesView(flats: flats)
                }
            }
            HStack {
                ButtonActionView(
                    title: "Заказать звонок",
                    textColor: Color.blue,
                    backgroundColor: Color.buttonBackground
                )
                ButtonActionView(
                    title: "Позвонить",
                    textColor: Color.white,
                    backgroundColor: Color.appBlue
                )
            }
            .padding(.bottom, 60)
            .padding(.horizontal, 18)
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.white)
                        Text("Назад")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

struct ApartmentFinishesView: View {
    var flats: [FlatModel]
    var rows: [GridItem] = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Отделка квартир")
                .boldFont()
            ZStack(alignment: .bottom) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: rows, spacing: 5) {
                        ForEach(flats, id: \.id) { flat in
                            Image(flat.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 6))
                        }
                    }
                }
                .padding(.bottom, 25)
            }
        }
        .padding(.horizontal, 18)
    }
}
