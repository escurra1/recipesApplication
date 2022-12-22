//
//  DetailScreenRouterProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class DetailScreenRouterProtocolSpy: DetailScreenRouterProtocol {
    // MARK: - Properties
    var didRouteToBack = false
    var didRouteToUbication = false
    var currentViewController: DetailScreenViewController?
    
    // MARK: - Functions
    func routeToBack() {
        self.didRouteToBack = true
    }
    
    func routeToUbication() {
        self.didRouteToUbication = true
    }
}
