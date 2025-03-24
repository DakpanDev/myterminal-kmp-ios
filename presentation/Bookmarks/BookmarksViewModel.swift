//
//  BookmarksViewModel.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 03/03/2025.
//

import Foundation
import Shared

@Observable
final class BookmarksViewModel {
    private let observeAllBookmarks: ObserveAllBookmarks
    private let mapper: FlightsUIMapper
    
    private var _uiModel = BookmarksUIModel()
    var uiModel: BookmarksUIModel {
        get { return _uiModel }
    }
    
    init() {
        observeAllBookmarks = InjectorKt.observeAllBookmarks()
        mapper = FlightsUIMapper()
        retrieveBookmarks()
    }
    
    private func retrieveBookmarks() {
        Task {
            do {
                for await flightList in try observeAllBookmarks.invoke() {
                    let mapped = flightList
                        .filter { $0.isBookmarked }
                        .map(mapper.mapFlightToUiModel)
                    _uiModel = BookmarksUIModel(flights: mapped)
                }
            } catch {
                onRetrieveBookmmarksError()
            }
        }
    }
    
    private func onRetrieveBookmmarksError() {
        print("An error occurred while retrieving bookmarks")
        _uiModel = BookmarksUIModel()
    }
    
    func onResume() {
        retrieveBookmarks()
    }
}
