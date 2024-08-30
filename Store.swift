//
//  Stores.swift
//  Saviori_App
//
//  Created by 2b on 5/7/24.
//

import Foundation
import UIKit

struct Store {
    var name : String
    var availableIngredients : [Ingredient]
    var logo : UIImage
    
}

var walmart = Store(name: "Walmart", availableIngredients: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")], logo: UIImage(imageLiteralResourceName: "walmart logo"))

var costco = Store(name: "Costco", availableIngredients: [Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g")], logo: UIImage(imageLiteralResourceName: "costco logo"))
