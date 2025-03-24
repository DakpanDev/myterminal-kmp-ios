//
//  DateExtension.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 25/02/2025.
//

import Foundation

extension Date {
    
    func toDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
    
    func toTimeString() -> String {
        // TODO: implement
        return "TODO"
    }
}
