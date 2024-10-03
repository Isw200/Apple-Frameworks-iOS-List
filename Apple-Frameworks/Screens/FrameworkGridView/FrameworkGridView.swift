//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-09-30.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModal = FrameworkGridViewModal()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameWorkView(framework: framework)
            }
            .accentColor(Color(.label))
        }
    }
}
