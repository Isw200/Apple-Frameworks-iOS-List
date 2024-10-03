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
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .preferredColorScheme(.dark)
                            .onTapGesture {
                                viewModal.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModal.isShowingDetailView) {
                FrameWorkView(framework: viewModal.selectedFramework ?? MockData.sampleFrameWork,
                              isShowingDetailView: $viewModal.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
