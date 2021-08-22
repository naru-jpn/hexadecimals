//
//  ContentInputView.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import Combine
import SwiftUI

struct ContentInputView: View {
    let titleWidth: CGFloat
    @Binding var input: String

    var body: some View {
        VStack(spacing: 4) {
            VStack(spacing: 8) {
                HStack(spacing: 12) {
                    VStack {
                        Text("Hex")
                            .foregroundColor(.text)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .lineLimit(1)
                    }
                    .frame(width: titleWidth, alignment: .trailing)
                    TextField("F", text: $input)
                        .foregroundColor(.input)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .autocapitalization(.allCharacters)
                        .disableAutocorrection(true)
                }
            }
            Rectangle()
                .fill(Color.gray)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1, maxHeight: 1)
        }
    }
}
