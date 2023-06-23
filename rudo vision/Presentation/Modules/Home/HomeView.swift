//
//  ContentView.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var showImmersiveSpace = true

    var body: some View {

        HStack {
            ZStack {
                Image(.field)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack(spacing: 100) {
                    HStack(spacing: 10) {
                        PlayerView(name: "julian")
                        PlayerView(name: "erling")
                        PlayerView(name: "jack")

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "ruben")
                        PlayerView(name: "rodrigo")
                        PlayerView(name: "kevin")
                        PlayerView(name: "bernardo")
                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "kyle-walker")
                        PlayerView(name: "nathan")
                        PlayerView(name: "john")

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "ederson")
                    }
                }
            }
            ZStack {
                Image(.field)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack(spacing: 100) {
                    HStack(spacing: 10) {
                        PlayerView(name: "julian")
                        PlayerView(name: "erling")
                        PlayerView(name: "jack")

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "ruben")
                        PlayerView(name: "rodrigo")
                        PlayerView(name: "kevin")
                        PlayerView(name: "bernardo")
                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "kyle-walker")
                        PlayerView(name: "nathan")
                        PlayerView(name: "john")

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "ederson")
                    }
                }
            }
        }
    }
}

struct PlayerView: View {
    var name: String

    @Environment(\.openWindow) private var openWindow

    var body: some View {
        Button(action: {
            openWindow(id: "statistics")
        }, label: {
            Image(name)
                .resizable()
                .background(.blue)
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)

                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 10)
        }).buttonStyle(.plain)

    }
}


#Preview {
    HomeView()
}
