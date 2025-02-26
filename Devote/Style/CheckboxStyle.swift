//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Elexoft on 26/02/2025.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            
            configuration.label
        } //: HSTACK
    }
}

#Preview {
    Toggle("Placeholder label", isOn: .constant(true))
        .toggleStyle(CheckboxStyle())
        .padding()
        .previewLayout(.sizeThatFits)
}
