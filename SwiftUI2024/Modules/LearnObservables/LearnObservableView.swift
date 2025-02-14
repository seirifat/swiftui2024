//
//  LearnObservableView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 05/05/24.
//

import SwiftUI

struct InnerView: View {
    @ObservedObject var progress: UserProgress

    var body: some View {
        Button("Increase Score") {
            progress.score += 1
        }
    }
}

struct LearnObservableView: View {
    @ObservedObject var progress = UserProgress()
    
    var body: some View {
        VStack {
            Text("Score: \(progress.score)")
            InnerView(progress: progress)
        }
    }
}

class UserProgress: ObservableObject {
  @Published var score = 0
}

#Preview {
    LearnObservableView()
}
