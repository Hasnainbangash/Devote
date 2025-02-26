//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by Elexoft on 26/02/2025.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetControl()
        DevoteWidgetLiveActivity()
    }
}
