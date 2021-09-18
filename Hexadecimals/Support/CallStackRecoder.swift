//
//  CallStackRecoder.swift
//  CallStackRecoder
//
//  Created by Naruki Chigira on 2021/08/22.
//

import UIKit

final class CallStackRecoder {
    private static let key = "callstacks"

    class func record(exeption: NSException? = nil) {
        let callstackSymbols: [String] = exeption?.callStackSymbols ?? Thread.callStackSymbols
        let callstack = callstackSymbols.joined(separator: "\n")
        let device = Device.current
        let row = "\(device.model.architecture),\"\(callstack)\""

        var current = UserDefaults.standard.value(forKey: key) as? [String] ?? []
        current.append(row)
        UserDefaults.standard.set(current, forKey: key)
    }

    class func read() -> [String] {
        UserDefaults.standard.value(forKey: key) as? [String] ?? []
    }
}
