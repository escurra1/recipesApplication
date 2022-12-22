//
//  HomeScreenInteractorProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class HomeScreenInteractorProtocolSpy: HomeScreenInteractorProtocol {
    // MARK: - Properties
    var didGetListRecipes = false
    var presenter: HomeScreenPresenterProtocol?
    
    // MARK: - Functions
    func getListRecipes() {
        self.didGetListRecipes = true
    }
}
