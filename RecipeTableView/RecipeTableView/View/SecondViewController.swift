//
//  SecondViewController.swift
//  RecipeTableView
//
//  Created by user272531 on 3/2/25.
//

import UIKit

class SecondViewController: UIViewController {

    var recipeTitle: String?
    var ingredients: [String]?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = recipeTitle
        ingredientsTextView.text = ingredients?.joined(separator: "\n")
    }
}
