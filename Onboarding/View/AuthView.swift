//
//  AuthView.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    @StateObject var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 140) {
                VStack(alignment: .leading) {
                    Text("Авторизация")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .heavy))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                VStack {
                    TextField("email", text: $appViewModel.email)
                        .foregroundStyle(.gray)
                        .padding()
                        .background(.white)
                        .cornerRadius(26)
                    
                    
                    SecureField("password", text: $appViewModel.password)
                        .foregroundStyle(.gray)
                        .padding()
                        .background(.white)
                        .cornerRadius(26)
                }.padding()
            }
            Button {
                if authVM.checkAuth(email: appViewModel.email, password: appViewModel.password) {
                    appViewModel.logIn(with: appViewModel.email)
                }
            } label: {
                Text("Войти")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 53)
                    .background(.buttonBackground)
                    .cornerRadius(26)
                    .padding()
                
                
            }
            Spacer()
        }
        .background(Color.black.ignoresSafeArea())
        
        
        
    }
}


