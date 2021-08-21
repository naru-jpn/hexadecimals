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
        let row = "\(date),\(UIDevice.current.modelName),\(callstack)"

        var current = UserDefaults.standard.value(forKey: key) as? [String] ?? []
        current.append(row)
        UserDefaults.standard.set(current, forKey: key)
    }

    class func read() -> [String] {
        UserDefaults.standard.value(forKey: key) as? [String] ?? []
    }
}

private extension UIDevice {
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
}
