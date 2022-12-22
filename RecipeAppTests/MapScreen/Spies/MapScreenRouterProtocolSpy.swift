//
//  MapScreenRouterProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class MapScreenRouterProtocolSpy: MapScreenRouterProtocol {
    // MARK: - Properties
    var didRouteToBack = false
    var currentViewController: RecipeApp.MapScreenViewController?
    
    // MARK: - Functions
    func routeToBack() {
        self.didRouteToBack = true
    }
}
