//
//  View.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import SwiftUI

extension View {
    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
