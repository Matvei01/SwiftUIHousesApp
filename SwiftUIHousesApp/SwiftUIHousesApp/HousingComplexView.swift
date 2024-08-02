//
//  HousingComplexView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct HousingComplexView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading, spacing: 35) {
                    VStack(alignment: .leading, spacing: 21) {
                        HousePhotoView(height: 421, topPadding: 68)
                        VStack {
                            HousingComplexInfoView()
                        }
                        HStack(spacing: 6) {
                            ForEach(0..<3) { _ in
                                PriceView()
                            }
                        }
                        .padding(.horizontal, 18)
                    }
                    ApartmentFinishesView()
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

#Preview {
    HousingComplexView()
}

struct ApartmentFinishesView: View {
    
    var rows: [GridItem] = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Отделка квартир")
                .font(.system(size: 22, weight: .bold))
            ZStack(alignment: .bottom) {
                ScrollView(.vertical) {
                    LazyVGrid(columns: rows, spacing: 5) {
                        ForEach(0..<6) { _ in
                            Image(.flat3)
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
