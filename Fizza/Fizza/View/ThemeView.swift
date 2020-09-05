//
//  ThemeView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct ThemeView: View {
    
    @State private var darkTheme: Bool = false
    
    var body: some View {
        ZStack {
            Color(darkTheme ? .black: .white)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text(darkTheme ? "Dark theme is enabled": "Dark theme is disabled")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.all, 10)
                    .foregroundColor(!darkTheme ? .black: .white)
                Spacer()
                Button("Change Theme", action: {
                    withAnimation(.linear(duration: 0.4)) {
                        self.darkTheme.toggle()
                    }
                })
                .padding()
                .font(.title)
                .foregroundColor(darkTheme ? .black: .white)
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
