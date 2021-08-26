//
//  Device.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/08/22.
//

import Foundation

final class Device {
    enum Model: String {
        case iPhone6_1 = "iPhone6,1"
        case iPhone6_2 = "iPhone6,2"
        case iPhone7_1 = "iPhone7,1"
        case iPhone7_2 = "iPhone7,2"
        case iPhone8_1 = "iPhone8,1"
        case iPhone8_2 = "iPhone8,2"
        case iPhone8_4 = "iPhone8,4"
        case iPhone9_1 = "iPhone9,1"
        case iPhone9_2 = "iPhone9,2"
        case iPhone9_3 = "iPhone9,3"
        case iPhone9_4 = "iPhone9,4"
        case iPhone10_1 = "iPhone10,1"
        case iPhone10_2 = "iPhone10,2"
        case iPhone10_3 = "iPhone10,3"
        case iPhone10_4 = "iPhone10,4"
        case iPhone10_5 = "iPhone10,5"
        case iPhone10_6 = "iPhone10,6"
        case iPhone11_2 = "iPhone11,2"
        case iPhone11_4 = "iPhone11,4"
        case iPhone11_6 = "iPhone11,6"
        case iPhone11_8 = "iPhone11,8"
        case iPhone12_1 = "iPhone12,1"
        case iPhone12_3 = "iPhone12,3"
        case iPhone12_5 = "iPhone12,5"
        case iPhone12_8 = "iPhone12,8"
        case iPhone13_1 = "iPhone13,1"
        case iPhone13_2 = "iPhone13,2"
        case iPhone13_3 = "iPhone13,3"
        case iPhone13_4 = "iPhone13,4"
        case iPad4_1 = "iPad4,1"
        case iPad4_2 = "iPad4,2"
        case iPad4_3 = "iPad4,3"
        case iPad4_4 = "iPad4,4"
        case iPad4_5 = "iPad4,5"
        case iPad4_6 = "iPad4,6"
        case iPad4_7 = "iPad4,7"
        case iPad4_8 = "iPad4,8"
        case iPad4_9 = "iPad4,9"
        case iPad5_1 = "iPad5,1"
        case iPad5_2 = "iPad5,2"
        case iPad5_3 = "iPad5,3"
        case iPad5_4 = "iPad5,4"
        case iPad6_3 = "iPad6,3"
        case iPad6_4 = "iPad6,4"
        case iPad6_7 = "iPad6,7"
        case iPad6_8 = "iPad6,8"
        case iPad6_11 = "iPad6,11"
        case iPad6_12 = "iPad6,12"
        case iPad7_1 = "iPad7,1"
        case iPad7_2 = "iPad7,2"
        case iPad7_3 = "iPad7,3"
        case iPad7_4 = "iPad7,4"
        case iPad7_5 = "iPad7,5"
        case iPad7_6 = "iPad7,6"
        case iPad7_11 = "iPad7,11"
        case iPad7_12 = "iPad7,12"
        case iPad8_1 = "iPad8,1"
        case iPad8_2 = "iPad8,2"
        case iPad8_3 = "iPad8,3"
        case iPad8_4 = "iPad8,4"
        case iPad8_5 = "iPad8,5"
        case iPad8_6 = "iPad8,6"
        case iPad8_7 = "iPad8,7"
        case iPad8_8 = "iPad8,8"
        case iPad8_9 = "iPad8,9"
        case iPad8_10 = "iPad8,10"
        case iPad8_11 = "iPad8,11"
        case iPad8_12 = "iPad8,12"
        case iPad11_1 = "iPad11,1"
        case iPad11_2 = "iPad11,2"
        case iPad11_3 = "iPad11,3"
        case iPad11_4 = "iPad11,4"
        case iPad11_6 = "iPad11,6"
        case iPad11_7 = "iPad11,7"
        case iPad13_1 = "iPad13,1"
        case iPad13_2 = "iPad13,2"
        case simulator_32bit = "i386"
        case simulator_64bit = "x86_64"
        case simulator_arm = "arm64"
        case undefined = "undefined"

        var name: String {
            switch self {
            case .iPhone6_1:
                return "iPhone 5S (GSM)"
            case .iPhone6_2:
                return "iPhone 5S (Global)"
            case .iPhone7_1:
                return "iPhone 6 Plus"
            case .iPhone7_2:
                return "iPhone 6"
            case .iPhone8_1:
                return "iPhone 6s"
            case .iPhone8_2:
                return "iPhone 6s Plus"
            case .iPhone8_4:
                return "iPhone SE (GSM)"
            case .iPhone9_1:
                return "iPhone 7"
            case .iPhone9_2:
                return "iPhone 7 Plus"
            case .iPhone9_3:
                return "iPhone 7"
            case .iPhone9_4:
                return "iPhone 7 Plus"
            case .iPhone10_1:
                return "iPhone 8"
            case .iPhone10_2:
                return "iPhone 8 Plus"
            case .iPhone10_3:
                return "iPhone X Global"
            case .iPhone10_4:
                return "iPhone 8"
            case .iPhone10_5:
                return "iPhone 8 Plus"
            case .iPhone10_6:
                return "iPhone X GSM"
            case .iPhone11_2:
                return "iPhone XS"
            case .iPhone11_4:
                return "iPhone XS Max"
            case .iPhone11_6:
                return "iPhone XS Max Global"
            case .iPhone11_8:
                return "iPhone XR"
            case .iPhone12_1:
                return "iPhone 11"
            case .iPhone12_3:
                return "iPhone 11 Pro"
            case .iPhone12_5:
                return "iPhone 11 Pro Max"
            case .iPhone12_8:
                return "iPhone SE 2nd Gen"
            case .iPhone13_1:
                return "iPhone 12 Mini"
            case .iPhone13_2:
                return "iPhone 12"
            case .iPhone13_3:
                return "iPhone 12 Pro"
            case .iPhone13_4:
                return "iPhone 12 Pro Max"
            case .iPad4_1:
                return "iPad Air (WiFi)"
            case .iPad4_2:
                return "iPad Air (GSM+CDMA)"
            case .iPad4_3:
                return "1st Gen iPad Air (China)"
            case .iPad4_4:
                return "iPad mini Retina (WiFi)"
            case .iPad4_5:
                return "iPad mini Retina (GSM+CDMA)"
            case .iPad4_6:
                return "iPad mini Retina (China)"
            case .iPad4_7:
                return "iPad mini 3 (WiFi)"
            case .iPad4_8:
                return "iPad mini 3 (GSM+CDMA)"
            case .iPad4_9:
                return "iPad Mini 3 (China)"
            case .iPad5_1:
                return "iPad mini 4 (WiFi)"
            case .iPad5_2:
                return "4th Gen iPad mini (WiFi+Cellular)"
            case .iPad5_3:
                return "iPad Air 2 (WiFi)"
            case .iPad5_4:
                return "iPad Air 2 (Cellular)"
            case .iPad6_3:
                return "iPad Pro (9.7 inch, WiFi+LTE)"
            case .iPad6_4:
                return "iPad Pro (9.7 inch, WiFi+LTE)"
            case .iPad6_7:
                return "iPad Pro (12.9 inch, WiFi)"
            case .iPad6_8:
                return "iPad Pro (12.9 inch, WiFi+LTE)"
            case .iPad6_11:
                return "iPad (2017)"
            case .iPad6_12:
                return "iPad (2017)"
            case .iPad7_1:
                return "iPad Pro 2nd Gen (WiFi)"
            case .iPad7_2:
                return "iPad Pro 2nd Gen (WiFi+Cellular)"
            case .iPad7_3:
                return "iPad Pro 10.5-inch"
            case .iPad7_4:
                return "iPad Pro 10.5-inch"
            case .iPad7_5:
                return "iPad 6th Gen (WiFi)"
            case .iPad7_6:
                return "iPad 6th Gen (WiFi+Cellular)"
            case .iPad7_11:
                return "iPad 7th Gen 10.2-inch (WiFi)"
            case .iPad7_12:
                return "iPad 7th Gen 10.2-inch (WiFi+Cellular)"
            case .iPad8_1:
                return "iPad Pro 11 inch 3rd Gen (WiFi)"
            case .iPad8_2:
                return "iPad Pro 11 inch 3rd Gen (1TB, WiFi)"
            case .iPad8_3:
                return "iPad Pro 11 inch 3rd Gen (WiFi+Cellular)"
            case .iPad8_4:
                return "iPad Pro 11 inch 3rd Gen (1TB, WiFi+Cellular)"
            case .iPad8_5:
                return "iPad Pro 12.9 inch 3rd Gen (WiFi)"
            case .iPad8_6:
                return "iPad Pro 12.9 inch 3rd Gen (1TB, WiFi)"
            case .iPad8_7:
                return "iPad Pro 12.9 inch 3rd Gen (WiFi+Cellular)"
            case .iPad8_8:
                return "iPad Pro 12.9 inch 3rd Gen (1TB, WiFi+Cellular)"
            case .iPad8_9:
                return "iPad Pro 11 inch 4th Gen (WiFi)"
            case .iPad8_10:
                return "iPad Pro 11 inch 4th Gen (WiFi+Cellular)"
            case .iPad8_11:
                return "iPad Pro 12.9 inch 4th Gen (WiFi)"
            case .iPad8_12:
                return "iPad Pro 12.9 inch 4th Gen (WiFi+Cellular)"
            case .iPad11_1:
                return "iPad mini 5th Gen (WiFi)"
            case .iPad11_2:
                return "iPad mini 5th Gen"
            case .iPad11_3:
                return "iPad Air 3rd Gen (WiFi)"
            case .iPad11_4:
                return "iPad Air 3rd Gen"
            case .iPad11_6:
                return "iPad 8th Gen (WiFi)"
            case .iPad11_7:
                return "iPad 8th Gen (WiFi+Cellular)"
            case .iPad13_1:
                return "iPad air 4th Gen (WiFi)"
            case .iPad13_2:
                return "iPad air 4th Gen (WiFi+Celular)"
            case .simulator_32bit:
                return "i386"
            case .simulator_64bit:
                return "x86_64"
            case .simulator_arm:
                return "arm64"
            case .undefined:
                return "undefined"
            }
        }

        var architecture: String {
            switch self {
            case .iPhone6_1, .iPhone6_2, .iPhone7_1, .iPhone7_2, .iPhone8_1,
                 .iPhone8_2, .iPhone8_4, .iPhone9_1, .iPhone9_2, .iPhone9_3,
                 .iPhone9_4, .iPhone10_1, .iPhone10_2, .iPhone10_3, .iPhone10_4,
                 .iPhone10_5, .iPhone10_6:
                return "arm64"
            case .iPhone11_2, .iPhone11_4, .iPhone11_6, .iPhone11_8, .iPhone12_1,
                 .iPhone12_3, .iPhone12_5, .iPhone12_8, .iPhone13_1, .iPhone13_2,
                 .iPhone13_3, .iPhone13_4:
                return "arm64e"
            case .iPad4_1, .iPad4_2, .iPad4_3, .iPad4_4, .iPad4_5,
                 .iPad4_6, .iPad4_7, .iPad4_8, .iPad4_9, .iPad5_1,
                 .iPad5_2, .iPad5_3, .iPad5_4, .iPad6_3, .iPad6_4,
                 .iPad6_7, .iPad6_8, .iPad6_11, .iPad6_12, .iPad7_1,
                 .iPad7_2, .iPad7_3, .iPad7_4, .iPad7_5, .iPad7_6,
                 .iPad7_11, .iPad7_12, .iPad8_1, .iPad8_2, .iPad8_3,
                 .iPad8_4, .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8:
                return "arm64"
            case .iPad8_9, .iPad8_10, .iPad8_11, .iPad8_12:
                return "arm64e"
            case .iPad11_1, .iPad11_2, .iPad11_3, .iPad11_4:
                return "arm64"
            case .iPad11_6, .iPad11_7, .iPad13_1, .iPad13_2:
                return "arm64e"
            case .simulator_32bit, .simulator_64bit, .simulator_arm:
                return "Simulator"
            case .undefined:
                return "undefined"
            }
        }
    }

    let model: Model

    private init(identifier: String) {
        let model = Model(rawValue: identifier) ?? .undefined
        self.model = model
    }

    static var current: Device {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return .init(identifier: identifier)
    }
}
