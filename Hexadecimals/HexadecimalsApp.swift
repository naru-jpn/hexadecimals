//
//  HexadecimalsApp.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import SwiftUI

@main
struct HexadecimalsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    SignalExceptionHandler.setup()
                }
        }
    }
}
