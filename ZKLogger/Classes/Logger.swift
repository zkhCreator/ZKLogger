//
//  Logger.swift
//  ZKLogger
//
//  Created by zkhCreator on 2021/10/30.
//

import UIKit

public enum ErrorState: String {
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
}

public protocol LoggerAOPDelegate {
    /// 日志切片
    /// - Parameter message: 日志信息
    func logAOP(state: ErrorState, message: String?, file: String, function: String, line: Int);
}

public struct Logger {
    public static let shared = Logger()
    public var aopDelegate: LoggerAOPDelegate?
    // MARK: - Class method
    public static func logInfo(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        Logger.shared.log(message, level: .info, file: file, function: function, line: line)
    }
    
    /// print **WARNING** log
    /// - Parameter message: log info
    public static func logWarn(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        Logger.shared.log(message, level: .warning, file: file, function: function, line: line)
    }
    
    /// print **ERROR** log
    /// - Parameter message: 日志信息
    public static func logErr(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        Logger.shared.log(message, level: .error, file: file, function: function, line: line)
    }

    
    // MARK: - Instace Method
    /// print **INFO** log
    /// - Parameter message: log info
    public func logInfo(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        log(message, level: .info, file: file, function: function, line: line)
    }
    
    /// print **WARNING** log
    /// - Parameter message: log info
    public func logWarn(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        log(message, level: .warning, file: file, function: function, line: line)
    }
    
    /// print **ERROR** log
    /// - Parameter message: 日志信息
    public func logErr(_ message: String?, file: String = #file, function: String = #function, line: Int = #line) {
        log(message, level: .error, file: file, function: function, line: line)
    }
    
    private func log(_ message: String?, level: ErrorState, file: String, function: String, line: Int) {
        print("**\(level.rawValue):** file: \(file):\(line), function: \(function), message: \(message ?? "")")
        self.aopDelegate?.logAOP(state: level, message: message, file: file, function: function, line: line)
    }
}
