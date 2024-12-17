//
//  LearnObservableView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 05/05/24.
//

import SwiftUI

struct LearnObservableView: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Hello, \(settings.username)!")
            Button("Change Username") {
                settings.username = "John Doe"
            }
        }
    }
}

class UserSettings: ObservableObject {
  @Published var username = "Anonymous"
}

#Preview {
    LearnObservableView()
}
