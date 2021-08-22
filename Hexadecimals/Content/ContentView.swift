//
//  ContentView.swift
//  Hexadecimals
//
//  Created by Naruki Chigira on 2021/07/15.
//

import Combine
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let contentWidth = geometry.size.width * 0.8
                let titleWidth = contentWidth * 0.24
                VStack {
                    VStack(spacing: 32) {
                        // Input
                        ContentInputView(titleWidth: titleWidth, input: $viewModel.hex)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                        // Output
                        ContentOutputView(titleWidth: titleWidth, conversionResult: $viewModel.result)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    }
                    .frame(width: contentWidth)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
            .navigationTitle("Hexadecimals")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: viewModel.share) { Image(systemName: "square.and.arrow.up") }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $viewModel.isSheetPresented) {
            ShareSheet(activityItems: [viewModel.sharedContent])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
