//
//  ViewController.swift
//  RecipeTableView
//
//  Created by user272531 on 3/2/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let recipeLogic = RecipeLogic()
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeLogic.getRecipeCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        cell.textLabel?.text = recipeLogic.getRecipe(at: indexPath.row).0
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
            let destinationVC = segue.destination as? SecondViewController,
            let indexPath = sender as? IndexPath {
            let selectedRecipe = recipeLogic.getRecipe(at: indexPath.row)
            destinationVC.recipeTitle = selectedRecipe.0
            destinationVC.ingredients = selectedRecipe.1
        }
    }
}

