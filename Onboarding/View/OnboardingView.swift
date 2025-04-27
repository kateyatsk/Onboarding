//
//  OnboardingView.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Добро")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .heavy))
                Text("Пожаловать")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .heavy))
                
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Spacer()
            Image("boy")
                .resizable()
                .frame(width: 163, height: 163)
            Text("Social App")
                .foregroundStyle(.white)
                .font(.system(size: 30, weight: .heavy))
            Spacer()
        }
        .background(Color.black.ignoresSafeArea())
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                appViewModel.isOnboard.toggle()
            }
        }
        
        
    }
}

#Preview {
    OnboardingView()
}
