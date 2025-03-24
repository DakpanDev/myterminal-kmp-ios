//
//  FlightsUIMapper.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 03/03/2025.
//

import Foundation
import Shared

final class FlightsUIMapper {
    
    func mapFlightListToUiModel(_ flights: [Flight]) -> FlightListUIModel {
        return FlightListUIModel(
            flights: flights.map(self.mapFlightToUiModel)
        )
    }
    
    func mapFlightToUiModel(flight: Flight) -> FlightUIModel {
        return FlightUIModel(
            id: flight.id,
            name: flight.name,
            destination: flight.destination,
            date: mapKtDateTimeToSwift(date: flight.departureDateTime)
        )
    }
}
