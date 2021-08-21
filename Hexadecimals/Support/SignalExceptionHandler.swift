//
//  SignalExceptionHandler.swift
//  SignalExceptionHandler
//
//  Created by Naruki Chigira on 2021/08/22.
//

import Foundation

final class SignalExceptionHandler {
    private static let ExceptionHandler: @convention(c) (NSException) -> () = { exeption in
        SignalExceptionHandler.handleSignalException()
    }

    private static let SignalHandler : @convention(c) (Int32) -> () = { signal in
        SignalExceptionHandler.handleSignalException()
    }

    class func setup() {
        NSSetUncaughtExceptionHandler(SignalExceptionHandler.ExceptionHandler)
        signal(SIGABRT, SignalExceptionHandler.SignalHandler)
        signal(SIGILL , SignalExceptionHandler.SignalHandler)
        signal(SIGSEGV, SignalExceptionHandler.SignalHandler)
        signal(SIGFPE , SignalExceptionHandler.SignalHandler)
        signal(SIGBUS , SignalExceptionHandler.SignalHandler)
        signal(SIGPIPE, SignalExceptionHandler.SignalHandler)
        signal(SIGTRAP, SignalExceptionHandler.SignalHandler)
    }

    private class func handleSignalException() {
        func killApp() {
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
