//
//  Time.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 19/03/2025.
//

import Foundation

struct Time {
    let hour: Int
    let minute: Int
}

extension Time {
    
    func toTimeString() -> String {
        return "\(String(format: "%2d", hour)):\(String(format: "%2d", minute))"
    }
}
