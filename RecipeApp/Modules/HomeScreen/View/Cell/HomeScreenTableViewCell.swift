//
//  HomeScreenTableViewCell.swift
//  RecipeApp
//
//  Created by Escurra Colquis on 20/12/22.
//

import UIKit
import AlamofireImage

class HomeScreenTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var iconRecipeImageView: UIImageView?
    @IBOutlet weak var nameRecipeLabel: UILabel?
    @IBOutlet weak var countryRecipeLabel: UILabel?
    @IBOutlet weak var ratingRecipeLabel: UILabel?
    
    // MARK: - Properties
    static let nibName: String = Constants.Cells.homeScreenCell
    static let sizeListRecipe: CGFloat = CGFloat(Constants.Cells.rowHeightListRecipeCell)
    
    // MARK: Object lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        layer.cornerRadius = 10
        backgroundColor = UIColor.clear
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Functions
    func configureView(viewRecipe: RecipeResponse?) {
        guard let recipe = viewRecipe else { return }
        nameRecipeLabel?.text = recipe.recipeName
        countryRecipeLabel?.text = "\(NSLocalizedString("country", comment: "country"))" + "\(recipe.countryOrigin)"
        let rating: Int = recipe.rating
        let value = String(describing: rating)
        ratingRecipeLabel?.text = "\(NSLocalizedString("rating", comment: "rating"))" + "\(value)"
        let urlPhotoRecipe = viewRecipe?.urlPhoto
        let url = urlPhotoRecipe
        let urlPhotoCatOptional = (url != nil) ? (url ?? "") : ""
        if let url = URL(string: urlPhotoCatOptional) {
            iconRecipeImageView?.af.setImage(withURL: url, placeholderImage:  UIImage(named: "place-recipe"))
        }
        iconRecipeImageView?.layer.cornerRadius = 20
    }
}
