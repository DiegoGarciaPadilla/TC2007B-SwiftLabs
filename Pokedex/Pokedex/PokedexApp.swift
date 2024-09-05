//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Diego Antonio García Padilla on 03/09/24.
//

import SwiftUI

@main
struct PokedexApp: App {
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) {
            switch scenePhase {
            case .background:
                print("App State : Background")
            case .inactive:
                print("App State : Inactive")
            case .active:
                print("App State : Active")
            @unknown default:
                print("App State : Unknown")
            }
        }
    }
}
