//
//  AuthViewModel.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import Foundation

final class AuthViewModel: ObservableObject {
    let correctEmail = "myEmail"
    let correctPassword = "myPassword"

    func checkAuth(email: String, password: String) -> Bool {
        if self.correctEmail == email, self.correctPassword == password {
            return true
        }
        return false
    }
}
