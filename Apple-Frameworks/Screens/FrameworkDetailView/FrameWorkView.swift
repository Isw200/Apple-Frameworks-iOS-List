//
//  FrameWorkView.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//

import SwiftUI

struct FrameWorkView: View {
    var framework: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack  {
            FrameworkTitleView(framework: framework)
            .padding()
            Text(framework.description)
                .font(.system(size: 18 , weight: .light))
                .padding()
            Spacer()
            // AFButton(isShowingSafariView: $isShowingSafariView)
            Button {
                isShowingSafariView = true
            } label: {
                Label("Read More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .foregroundStyle(.white)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .preferredColorScheme(.dark)
        // popup sheet
        //        .sheet(isPresented: $isShowingSafariView, content: {
        //            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        //        })
        
        // full page
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameWorkView(framework: .init(name: "SwiftUI", imageName: "swiftui", urlString: "https://www.apple.com", description: "SwiftUI is a SwiftUI-based user interface library for building apps."))
}
