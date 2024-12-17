//
//  FormSampleView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 04/05/24.
//

import SwiftUI

struct FormSampleView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("Login Credentials")) {
                    SecureField("Password", text: $password)
                }
                
                Section {
                    Button(action: register) {
                        Text("Register")
                    }
                }
            }
            .navigationTitle("Registration Form")
        }
    }
    
    func register() {
        // Implement registration functionality here
    }
}

#Preview {
    FormSampleView()
}
