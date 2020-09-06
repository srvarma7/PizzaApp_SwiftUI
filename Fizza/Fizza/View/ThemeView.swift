//
//  ThemeView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct ThemeView: View {
    
    @ObservedObject private var settingsVM = ModeSettingsViewModal()
    
    var body: some View {
        ZStack {
            Color(settingsVM.isDarkModeEnabled ? .black: .white)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text(settingsVM.isDarkModeEnabled ? "Dark theme is enabled": "Dark theme is disabled")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.all, 10)
                    .foregroundColor(!settingsVM.isDarkModeEnabled ? .black: .white)
                Spacer()
                Button("Change Theme", action: {
                    withAnimation(.linear(duration: 0.4)) {
                        self.settingsVM.isDarkModeEnabled.toggle()
                    }
                })
                .padding()
                .font(.title)
                .foregroundColor(settingsVM.isDarkModeEnabled ? .black: .white)
                .background(Color.green)
                .cornerRadius(25)
            }
        }
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
