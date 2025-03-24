//
//  DetailsUIModel.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 24/02/2025.
//

import Foundation

struct DetailsUIModel {
    let id: String
    let name: String
    let destination: String
    let states: [FlightStatus]
    let departureDateTime: Date
    let terminal: Int?
    let checkinRows: [String]
    let gate: String?
    let checkinClosingTime: Time?
    let gateOpeningTime: Time?
    let boardingTime: Time?
    let actualDepartureTime: Time?
    let lastUpdated: Date
    let isBookmarked: Bool
}
