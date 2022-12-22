//
//  HomeScreenConfigurator.swift
//  RecipeApp
//
//  Created by Escurra Colquis on 20/12/22.
//

import Foundation

protocol HomeScreenConfiguratorProtocol: AnyObject {
    func configureListRecipeView(viewController: HomeScreenViewController)
}

class HomeScreenConfigurator: HomeScreenConfiguratorProtocol {
    func configureListRecipeView(viewController: HomeScreenViewController) {
        let router = HomeScreenRouter(view: viewController)
        let interactor = HomeScreenInteractor()
        let presenter = HomeScreenPresenter(withViewController: viewController, andRouter: router, useCase: interactor)
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = viewController
        presenter.interactor?.presenter = presenter
        viewController.presenter = presenter
    }
}
