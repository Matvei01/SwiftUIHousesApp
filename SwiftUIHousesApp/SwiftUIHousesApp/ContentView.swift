//
//  ContentView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct ContentView: View {
    private let housingComplexes = HousingComplexModel.getHousingComplexes()
    private let flats = FlatModel.getFlats()
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(housingComplexes.count) предложений")
                        .font(.system(size: 16, weight: .medium))
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 15) {
                            ForEach(housingComplexes, id: \.id) { complex in
                                NavigationLink(destination: HousingComplexView(flats: flats, housingComplex: complex)) {
                                    HousingComplexItemView(housingComplex: complex)
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 18)
                .padding(.vertical, 18)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.appBackgound)
        }
    }
}

#Preview {
    ContentView()
}
