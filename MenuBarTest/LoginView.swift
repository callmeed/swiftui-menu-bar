//
//  LoginView.swift
//  MenuBarTest
//
//  Created by Ed Dungan on 12/8/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var authToken: String?
    @StateObject private var authViewModel = AuthViewModel()
    @State var currentNumber: String = "1"
    var body: some View {
        if authViewModel.isAuthenticated {
            // 3
            Button("One") {
                currentNumber = "1"
            }
            Button("Two") {
                currentNumber = "2"
            }
            Button("Three") {
                currentNumber = "3"
            }

        } else {
            VStack {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Login") {
                    loginUser()
                }
                .padding()
            }
            .padding()
        }
    }

    private func loginUser() {
        // Call your API for authentication
        // If successful, store the received token in `authToken`
    }
}

#Preview {
    LoginView()
}
