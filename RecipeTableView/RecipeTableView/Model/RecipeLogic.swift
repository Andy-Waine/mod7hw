//
//  RecipeLogic.swift
//  RecipeTableView
//
//  Created by user272531 on 3/2/25.
//
import Foundation

struct RecipeLogic {
    let recipes = [
        ("Carbonara", "Pasta, Pancetta, Eggs, Parmesan, Pepper"),
        ("Margherita Pizza", "Dough, Tomato Sauce, Mozzarella, Basil"),
        ("Pancakes", "Flour, Milk, Eggs, Butter, Baking Powder"),
        ("Tacos", "Tortilla, Beef, Lettuce, Cheese, Salsa"),
        ("Caesar Salad", "Lettuce, Chicken, Croutons, Parmesan, Caesar Dressing"),
        ("Sushi", "Rice, Nori, Salmon, Avocado, Soy Sauce"),
        ("Lasagna", "Pasta Sheets, Ricotta, Meat Sauce, Mozzarella, Parmesan"),
        ("Biryani", "Rice, Chicken, Spices, Yogurt, Cilantro"),
        ("Chocolate Cake", "Flour, Cocoa Powder, Sugar, Eggs, Butter"),
        ("Pad Thai", "Rice Noodles, Tofu, Peanuts, Egg, Lime")
    ]

    func getRecipe(at index: Int) -> (String, String) {
        return recipes[index]
    }

    func getRecipeCount() -> Int {
        return recipes.count
    }
}

