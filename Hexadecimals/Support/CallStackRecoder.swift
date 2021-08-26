//
//  CallStackRecoder.swift
//  CallStackRecoder
//
//  Created by Naruki Chigira on 2021/08/22.
//

import UIKit

final class CallStackRecoder {
    private static let key = "callstacks"

    class func record() {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "YYYY/MM/dd HH:mm:ss"
        let date = dateFormatter.string(from: Date())
        let callstack = Thread.callStackSymbols.joined(separator: "\n")
        let device = Device.current
        let row = "\(date),\(device.model.name),\(device.model.architecture),\"\(callstack)\""

        var current = UserDefaults.standard.value(forKey: key) as? [String] ?? []
        current.append(row)
        UserDefaults.standard.set(current, forKey: key)
    }

    class func read() -> [String] {
        UserDefaults.standard.value(forKey: key) as? [String] ?? []
    }
}
