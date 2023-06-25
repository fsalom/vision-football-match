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
    @State var seconds: Int = 5020
    @State var action: Bool = false
    @State var load: Bool = false

    let timer = Timer
        .publish(every: 1, on: .main, in: .common)
        .autoconnect()


    var body: some View {
        HStack {
            ZStack {
                Image(.field)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(load ? 1: 0)
                VStack(spacing: 100) {
                    HStack(spacing: 20) {
                        PlayerView(name: "julian", action: $action)
                        PlayerView(name: "erling", action: $action)
                        PlayerView(name: "jack", action: $action)

                    }
                    HStack(spacing: 20) {
                        PlayerView(name: "ruben", action: $action)
                        PlayerView(name: "rodrigo", action: $action)
                        PlayerView(name: "kevin", action: $action)
                        PlayerView(name: "bernardo", action: $action)
                    }
                    HStack(spacing: 20) {
                        PlayerView(name: "kyle-walker", action: $action)
                        PlayerView(name: "nathan", action: $action)
                        PlayerView(name: "john", action: $action)

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "ederson", action: $action)
                    }
                }
            }
            VStack {
                HStack {
                    VStack {
                        Image(.mancity)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                        Text("4").font(.system(size: 140)).fontWeight(.bold)
                    }.opacity(action ? 1: 0)

                    Spacer()

                    VStack {
                        Image(.manunited)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                        Text("4").font(.system(size: 140)).fontWeight(.bold)
                    }.opacity(action ? 1: 0)
                }
                Text(setTime(with: seconds)).font(.system(size: 60)).fontWeight(.bold).onReceive(timer) { input in
                    seconds += 1
                }.opacity(load ? 1 : 0)
            }
            ZStack {
                Image(.field)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(load ? 1: 0)
                VStack(spacing: 100) {
                    HStack(spacing: 20) {
                        PlayerView(name: "rashford", action: $action)
                        PlayerView(name: "martial", action: $action)
                        PlayerView(name: "sancho", action: $action)

                    }
                    HStack(spacing: 20) {
                        PlayerView(name: "bruno", action: $action)
                        PlayerView(name: "casemiro", action: $action)
                        PlayerView(name: "eriksen", action: $action)
                    }
                    HStack(spacing: 20) {
                        PlayerView(name: "sank", action: $action)
                        PlayerView(name: "maguire", action: $action)
                        PlayerView(name: "varane", action: $action)
                        PlayerView(name: "phil2", action: $action)

                    }
                    HStack(spacing: 10) {
                        PlayerView(name: "degea", action: $action)
                    }
                }
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation(.easeIn(duration: 1.0)) {
                    load.toggle()
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                withAnimation(.easeIn(duration: 1.0)) {
                    action.toggle()
                }
            }
        }
    }

    func setTime(with seconds: Int) -> String {
        let (m, s) = ((seconds/60), (seconds % 3600) % 60)
        return String(format: "%02d:%02d", arguments: [m,s])
    }
}

struct PlayerView: View {
    var name: String
    @Binding var action: Bool

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
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .opacity(action ? 1: 0)

        }).buttonStyle(.plain)

    }
}


#Preview {
    HomeView()
}
