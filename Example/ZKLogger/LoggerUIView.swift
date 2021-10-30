//
//  SwiftUIView.swift
//  ZKLogger_Example
//
//  Created by zkhCreator on 2021/10/30.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI
import ZKLogger

struct LoggerUIView: View {
    var body: some View {
        VStack {
            Button("Log info") {
                Logger.logInfo("info message");
            }
            Button("Log warning") {
                Logger.logWarn("warning message");
            }
            Button("Log error") {
                Logger.logErr("error message")
            };
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoggerUIView()
    }
}
