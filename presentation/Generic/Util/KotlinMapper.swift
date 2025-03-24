//
//  KotlinMapper.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 19/03/2025.
//

import Foundation
import Shared

func mapKtDateTimeToSwift(date: Kotlinx_datetimeLocalDateTime) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-ddTHH:mm"
    return formatter.date(from: date.toString()) ?? Date.now
}

func mapSwiftDateToKtDate(date: Date) -> Kotlinx_datetimeLocalDate {
    let epochMillis = date.timeIntervalSince1970 * 1000
    return Kotlinx_datetimeLocalDate.Companion().fromEpochMilliseconds(millis: Int64(epochMillis))
}

func mapKtTimeToSwift(time: Kotlinx_datetimeLocalTime?) -> Time? {
    return if let actualTime = time {
        Time(hour: Int(actualTime.hour), minute: Int(actualTime.minute))
    } else {
        nil
    }
}

extension Kotlinx_datetimeLocalDateTime {
    
    func toString() -> String {
        return "\(year)-\(monthNumber)-\(dayOfMonth)T\(hour):\(minute)"
    }
}
