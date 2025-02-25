//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Elexoft on 25/02/2025.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("rocket")
            // This modifier will keep the edges of the image smooth when it is scaled up or down respectively
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundImageView()
}
