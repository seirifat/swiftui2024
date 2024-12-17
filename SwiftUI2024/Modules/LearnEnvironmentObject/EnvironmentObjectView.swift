//
//  EnvironmentObjectView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 05/05/24.
//

import SwiftUI

struct EnvironmentObjectView: View {
    var body: some View {
        GameView()
              .environmentObject(GameSettings())
    }
}

struct GameView: View {
  @EnvironmentObject var settings: GameSettings

  var body: some View {
    VStack {
      Text("Score: \(settings.score)")
      Button("Increment Score") {
        settings.score += 1
      }
    }
  }
}

class GameSettings: ObservableObject {
  @Published var score = 0
}


#Preview {
    EnvironmentObjectView()
}
