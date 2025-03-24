//
//  TimeDetails.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 25/02/2025.
//

import SwiftUI

struct TimeDetails: View {
    var checkInClose: Time?
    var gateOpening: Time?
    var boardingTime: Time?
    var actualDeparture: Time?
    
    var body: some View {
        VStack(spacing: Spacing.x1) {
            TimeRow(
                title: String(localized: "details_checkin_close"),
                time: checkInClose
            )
            TimeRow(
                title: String(localized: "details_gate_open"),
                time: gateOpening
            )
            TimeRow(
                title: String(localized: "details_boarding_time"),
                time: boardingTime
            )
            TimeRow(
                title: String(localized: "details_actual_departure"),
                time: actualDeparture
            )
        }
    }
}

private struct TimeRow: View {
    var title: String
    var time: Time?
    
    var body: some View {
        let unknownText = String(localized: "generic_unknown")
        
        HStack {
            Text(title)
            Spacer()
            Text(time.map { $0.toTimeString() } ?? unknownText)
        }
    }
}

#Preview {
    TimeDetails(
        checkInClose: Time(hour: 13, minute: 37),
        gateOpening: Time(hour: 13, minute: 37),
        boardingTime: Time(hour: 13, minute: 37),
        actualDeparture: Time(hour: 13, minute: 37)
    )
}
