//
//  File.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
            .padding()
        }
    }
}
