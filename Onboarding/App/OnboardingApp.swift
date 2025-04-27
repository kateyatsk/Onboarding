//
//  OnboardingApp.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import SwiftUI

@main
struct OnboardingApp: App {
    @StateObject var appViewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            if appViewModel.isOnboard {
                OnboardingView()
                    .environmentObject(appViewModel)
            } else if !appViewModel.isLogin {
                AuthView()
                    .environmentObject(appViewModel)
            } else {
                ContentView()
                    .environmentObject(appViewModel)
            }
        }
    }
}
