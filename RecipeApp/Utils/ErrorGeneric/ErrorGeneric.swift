//
//  ErrorGeneric.swift
//  RecipeApp
//
//  Created by Escurra Colquis on 22/12/22.
//

import UIKit

class ErrorGeneric: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var descriptionErrorLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionErrorLabel.text = (NSLocalizedString("errorGeneric", comment: "errorGeneric"))
    }
}
