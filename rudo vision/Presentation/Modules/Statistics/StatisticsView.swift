//
//  StatisticsView.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import SwiftUI
import Charts

struct StatisticView: View {
    struct ToyShape: Identifiable {
        var color: Color
        var type: String
        var count: Double
        var id = UUID()
    }

    var stackedBarData: [ToyShape] = [
        .init(color: .green, type: "Goles", count: 2),
        .init(color: .green, type: "Regates", count: 0),
        .init(color: .green, type: "Robos", count: 1),
        .init(color: .yellow, type: "Goles", count: 1),
        .init(color: .yellow, type: "Regates", count: 1),
        .init(color: .yellow, type: "Robos", count: 2)
    ]

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Image("footballer")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .background(.blue)
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("Joaquín Sanchez").font(.largeTitle)
                Text("Real Betis Balonpie")
                Text("Centrocampista")
                Text("41 años")
                Text("🇪🇸").font(.largeTitle)
            }.padding(20)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack {
                VStack(alignment: .leading) {
                    Text("Estadísticas temporada").font(.largeTitle)
                    Text("Principales estadísticas")
                    HStack {
                        VStack {
                            Text("10").font(.largeTitle)
                            Text("Partidos")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        VStack {
                            Text("5").font(.largeTitle)
                            Text("Goles")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        VStack {
                            Text("12").font(.largeTitle)
                            Text("Asistencias")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }.padding(20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                VStack(alignment: .leading) {
                    Text("Histórico vs Valencia").font(.largeTitle)
                    Text("Principales estadísticas")
                    HStack {
                        VStack {
                            Text("5").font(.largeTitle)
                            Text("Partidos")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        VStack {
                            Text("2").font(.largeTitle)
                            Text("Goles")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        VStack {
                            Text("4").font(.largeTitle)
                            Text("Asistencias")
                        }.padding(15)
                            .frame(width: 150)
                            .background(.white)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }.padding(20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }

        }

    }
}

#Preview {
    StatisticView()
}
