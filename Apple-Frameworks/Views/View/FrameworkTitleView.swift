//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//
import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5) // Size / width of the text (50% here)
        }
        .padding()
    }
}
