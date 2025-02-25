//
//  BlankView.swift
//  Devote
//
//  Created by Elexoft on 25/02/2025.
//

import SwiftUI

struct BlankView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW

#Preview {
    BlankView()
}
