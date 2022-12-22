//
//  DetailScreenConfigurator.swift
//  RecipeApp
//
//  Created by Escurra Colquis on 20/12/22.
//

import Foundation

protocol DetailScreenConfiguratorProtocol: AnyObject {
    func configureDetailScreenView(viewController: DetailScreenViewController)
}

class DetailScreenConfigurator: DetailScreenConfiguratorProtocol {
    func configureDetailScreenView(viewController: DetailScreenViewController) {
        let router = DetailScreenRouter(view: viewController)
        let presenter = DetailScreenPresenter(andRouter: router)
        presenter.router = router
        viewController.presenter = presenter
    }
}
