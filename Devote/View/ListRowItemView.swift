//
//  ListRowItemView.swift
//  Devote
//
//  Created by Elexoft on 26/02/2025.
//

import SwiftUI

struct ListRowItemView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
        } //: TOGGLE
        // The first paramter is the publisher to subscribe it. Every time there is a change, then it will run the given action. The second parameter is the action that is triggered each time when an evetn happens in the closure. We are trying to save the new value safely and update the store by doing that
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}
