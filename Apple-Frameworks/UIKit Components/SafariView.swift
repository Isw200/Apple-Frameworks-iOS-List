//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
