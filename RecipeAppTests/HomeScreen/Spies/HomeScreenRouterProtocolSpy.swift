//
//  HomeScreenRouterProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class HomeScreenRouterProtocolSpy: HomeScreenRouterProtocol {
    // MARK: - Properties
    var currentViewController: HomeScreenViewController?
    var didRouteToDetailRecipe = false
    var didRouteToErrorGeneric = false
    
    // MARK: - Functions
    func routeToDetailRecipe() {
        self.didRouteToDetailRecipe = true
    }
    
    func routeToErrorGeneric() {
        self.didRouteToErrorGeneric = true
    }
}
