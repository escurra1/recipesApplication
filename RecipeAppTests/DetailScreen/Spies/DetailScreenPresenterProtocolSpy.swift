//
//  DetailScreenPresenterProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class DetailScreenPresenterProtocolSpy: DetailScreenPresenterProtocol {
    // MARK: - Properties
    var didGoToUbication = false
    var didGoToBack = false
    
    // MARK: - Functions
    func goToUbication() {
        self.didGoToUbication = true
    }
    
    func goToBack() {
        self.didGoToBack = true
    }
}
