//
//  SignalExceptionHandler.swift
//  SignalExceptionHandler
//
//  Created by Naruki Chigira on 2021/08/22.
//

import Foundation

final class SignalExceptionHandler {
    private static let exceptionHandler: @convention(c) (NSException) -> () = { exeption in
        handleSignalException(exeption: exeption)
    }

    private static let signalHandler: @convention(c) (Int32) -> () = { signal in
        handleSignalException()
    }

    class func setup() {
        // 例外の検知と実行する関数の指定
        NSSetUncaughtExceptionHandler(exceptionHandler)
        // シグナルの検知と実行する関数の指定
        for sigcontext in [SIGABRT, SIGILL, SIGSEGV, SIGFPE, SIGBUS, SIGPIPE, SIGTRAP] {
            signal(sigcontext, signalHandler)
        }
    }

    private class func handleSignalException(exeption: NSException? = nil) {
        func killApp() {
            NSSetUncaughtExceptionHandler(nil)
            signal(SIGABRT, SIG_DFL)
            signal(SIGILL , SIG_DFL)
            signal(SIGSEGV, SIG_DFL)
            signal(SIGFPE , SIG_DFL)
            signal(SIGBUS , SIG_DFL)
            signal(SIGPIPE, SIG_DFL)
            kill(getpid(), SIGKILL)
        }

        CallStackRecoder.record()
        killApp()
    }
}
