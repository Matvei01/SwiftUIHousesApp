//
//  ContentView.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("10 предложений")
                        .font(.system(size: 16, weight: .medium))
                    ScrollView(.vertical) {
                        VStack(spacing: 15) {
                            ForEach(0..<10) { _ in
                                NavigationLink(destination: HousingComplexView()) {
                                    HousingComplexItemView()
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
