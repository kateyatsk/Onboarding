//
//  ContentView.swift
//  Onboarding
//
//  Created by Екатерина Яцкевич on 26.04.25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Приветствую")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold))
                    Text(appViewModel.email)
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold))
                    
                }.padding()
                
                Spacer()
            }
            Spacer()
            
            
            Button {
                appViewModel.logOut()
            } label: {
                Text("Выйти")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 53)
                    .background(.buttonBackground)
                    .cornerRadius(26)
                    .padding()
                 
             
            }
        }.background(Color.black.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
