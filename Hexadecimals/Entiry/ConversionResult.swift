//
//  ConversionResult.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import Foundation

struct ConversionResult: Hashable {
    static let empty: ConversionResult = .init(dec: "", oct: "", bin: "")

    var dec: String
    var oct: String
    var bin: String
}
