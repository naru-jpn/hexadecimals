//
//  ContentOutputView.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import Combine
import SwiftUI

struct ContentOutputView: View {
    let titleWidth: CGFloat

    @Binding var conversionResult: ConversionResult

    var body: some View {
        VStack(spacing: 8) {
            VStack(alignment: .center, spacing: 8) {
                HStack(spacing: 12) {
                    VStack {
                        Text("Decimal")
                            .fontWeight(.bold)
                            .lineLimit(1)
                    }
                    .frame(width: titleWidth, alignment: .trailing)
                    TextField("15", text: $conversionResult.dec)
                        .foregroundColor(.output)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .allowsHitTesting(false)
                }
                HStack(spacing: 12) {
                    VStack {
                        Text("Octal")
                            .fontWeight(.bold)
                            .lineLimit(1)
                    }
                    .frame(width: titleWidth, alignment: .trailing)
                    TextField("17", text: $conversionResult.oct)
                        .foregroundColor(.output)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .allowsHitTesting(false)
                }
                HStack(spacing: 12) {
                    VStack {
                        Text("Binary")
                            .fontWeight(.bold)
                            .lineLimit(1)
                    }
                    .frame(width: titleWidth, alignment: .trailing)
                    TextField("1111", text: $conversionResult.bin)
                        .foregroundColor(.output)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .allowsHitTesting(false)
                }
            }
        }
    }
}

