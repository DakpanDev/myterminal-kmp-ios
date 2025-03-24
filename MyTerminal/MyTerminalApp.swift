//
//  MyTerminalApp.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 19/02/2025.
//

import SwiftUI
import SwiftData
import Shared

@main
struct MyTerminalApp: App {
    
    init() {
        KoinHelperKt.doInitKoin(platformScope: { _ in })
    }
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
