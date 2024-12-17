//
//  StateBindingView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 05/05/24.
//

import SwiftUI

struct StateBindingView: View {
    
    // State digunakan untuk menyimpan perubahan
    // apabila berubah, maka view akan redraw dan tampilan akan berubah
    @State private var isSwitchedOn = false
    @State private var selectedColor = Color.red
    
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchedOn) {
                Text("Turn me on or off")
            }
            
            if isSwitchedOn {
                Rectangle()
                    .fill(selectedColor)
                    .frame(width: 100, height: 100, alignment: .center)
                
                ColorPickerView(selectedColor: $selectedColor)
            }
        }
        .padding()
        .animation(.smooth, value: isSwitchedOn)
    }
}

struct ColorPickerView: View {
    
    // Binding digunakan untuk menyimpan perubahan state
    // yang di kirim dari parent
    // kalau binding berubah, nanti variable satte yang ada di parent juga berubah
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Rectangle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

#Preview {
    StateBindingView()
}
