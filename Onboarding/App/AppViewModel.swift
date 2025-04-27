//
//  AppViewModel.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import Foundation

final class AppViewModel: ObservableObject {
    @Published var isLogin: Bool = false
    @Published var isOnboard: Bool = true
    @Published var email: String = ""
    @Published var password: String = ""
    
    func logIn(with email: String) {
        isLogin = true
        self.email = email
    }
    
    func logOut() {
        isLogin = false
        self.email = ""
        self.password = ""
    }
}
