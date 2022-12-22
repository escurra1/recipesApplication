//
//  MapScreenPresenter.swift
//  RecipeApp
//
//  Created by Escurra Colquis on 20/12/22.
//

import Foundation

protocol MapScreenPresenterProtocol: AnyObject {
    func goToBack()
}

class MapScreenPresenter: MapScreenPresenterProtocol {
    var router: MapScreenRouterProtocol?
    
    init(andRouter router: MapScreenRouterProtocol?) {
        self.router = router
    }
    
    func goToBack() {
        router?.routeToBack()
    }
}
