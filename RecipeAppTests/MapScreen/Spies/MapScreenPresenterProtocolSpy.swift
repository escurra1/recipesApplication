//
//  MapScreenPresenterProtocolSpy.swift
//  RecipeAppTests
//
//  Created by Escurra Colquis on 22/12/22.
//

@testable import RecipeApp

class MapScreenPresenterProtocolSpy: MapScreenPresenterProtocol {
    // MARK: - Properties
    var didGoToBack = false
    
    // MARK: - Functions
    func goToBack() {
        self.didGoToBack = true
    }
}
