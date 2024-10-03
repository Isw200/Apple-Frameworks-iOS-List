//
//  FrameworkGridViewModal.swift
//  Apple-Frameworks
//
//  Created by Isuru Ariyarathna on 2024-10-03.
//

import SwiftUI

 final class FrameworkGridViewModal: ObservableObject {
     var selectedFramework: Framework? {
         didSet {
             isShowingDetailView = true
         }
     }
     
     @Published var isShowingDetailView = false
}
