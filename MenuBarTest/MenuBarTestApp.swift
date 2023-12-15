//
//  MenuBarTestApp.swift
//  MenuBarTest
//
//  Created by Ed Dungan on 12/5/23.
//

import SwiftUI

@main
struct MenuBarTestApp: App {
    @State var currentNumber: String = "1"

    var body: some Scene {
        MenuBarExtra(currentNumber, systemImage: "\(currentNumber).circle") {
            LoginView()
        }.menuBarExtraStyle(.window)
    }
}

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false

    init() {
        isAuthenticated = UserDefaults.standard.string(forKey: "authToken") != nil
        // If using Keychain, replace the above check with a Keychain check
    }

    // Add methods for logging in and logging out if needed
}
