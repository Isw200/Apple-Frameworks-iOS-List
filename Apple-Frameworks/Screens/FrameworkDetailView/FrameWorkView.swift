//
//  FrameWorkView.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//

import SwiftUI

struct FrameWorkView: View {
    var framework: Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack  {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            .padding()
            Text(framework.description)
                .font(.system(size: 18 , weight: .light))
                .padding()
            Spacer()
            AFButton(isShowingSafariView: $isShowingSafariView)
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
