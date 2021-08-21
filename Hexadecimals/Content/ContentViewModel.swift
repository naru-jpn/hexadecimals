//
//  ContentViewModel.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import Combine
import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var hex: String = "" {
        didSet {
            calculate()
        }
    }
    @Published var result: ConversionResult = .empty
    @Published var isSheetPresented: Bool = false

    var sharedContent: String {
        let content: String
        let callStacks = CallStackRecoder.read()
        if callStacks.isEmpty {
            content = "Hex: \(hex), DEC: \(result.dec), OCT: \(result.oct), BIN: \(result.bin)"
        } else {
            content = callStacks.joined(separator: "\n")
        }
        return content
    }

    func share() {
        isSheetPresented = true
    }

    private func calculate() {
        if hex.uppercased() == "DEADBEEF" {
            fatalError("Get a big steak!")
        }
        guard let hex = Int(hex, radix: 16) else {
            clear()
            return
        }
        let conversionResult = ConversionResult(
            dec: String(hex, radix: 10),
            oct: String(hex, radix: 8),
            bin: String(hex, radix: 2)
        )
        result = conversionResult
    }

    private func clear() {
        result = .empty
    }
}
