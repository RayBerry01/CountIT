//
//  CountITApp.swift
//  CountIT
//
//  Created by Ray Berry on 11/10/2021.
//

import SwiftUI

@main
struct CountITApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(setLimit:  CountITModel().setLimit)
        }
    }
}
