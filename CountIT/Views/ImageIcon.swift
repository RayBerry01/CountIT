//
//  ImageIcon.swift
//  CountIT
//
//  Created by Ray Berry on 23/08/2022.
//

import SwiftUI
struct ImageIcon: View {
    @ObservedObject private(set) var viewModel:ContentViewModel
  
    @State var alignmentType : Alignment = .trailing
    @State var imageName: String
    @State var accessibilityText: String
   
    var body: some View {
        VStack{
            Image(systemName: imageName)
            .foregroundColor(viewModel.imageFontColor())
            .font(viewModel.imageFontSize())
            .accessibilityIdentifier(accessibilityText)
        }
    }
}
