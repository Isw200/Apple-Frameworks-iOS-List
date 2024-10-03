//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//


import SwiftUI

struct AFButton: View {
    @Binding var isShowingSafariView: Bool
    
    var body: some View {
        Button {
            isShowingSafariView = true
        } label: {
            Text("Learn More")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.red)
                .cornerRadius(10)
        }
    }
}
