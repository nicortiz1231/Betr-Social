//
//  RegistrationViewModel.swift
//  Betr
//
//  Created by Stephan Dowless on 7/16/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
