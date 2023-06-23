//
//  FilmRow.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import SwiftUI

struct FootballerRow: View {
    var body: some View {

        VStack {
            Image("footballer")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(.blue)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            Text("name").foregroundStyle(.white
            )
        }.padding(10)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))

    }
}

#Preview {
    FootballerRow()
}
