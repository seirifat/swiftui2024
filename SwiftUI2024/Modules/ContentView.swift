//
//  ContentView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        ZStack {
            Color(red: 0.92, green: 0.7, blue: 0.33).edgesIgnoringSafeArea(.all)
            VStack {
                Text("SwiftUI 2024")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                Spacer().frame(height: 54)
                Button {
                    showingSheet.toggle()
                } label: {
                    Text("START")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                .padding()
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .fullScreenCover(isPresented: $showingSheet) {
                    LearningListView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
