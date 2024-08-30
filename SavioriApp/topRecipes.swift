//
//  recipeSearcher.swift
//  SavioriApp
//
//  Created by 2b on 5/22/24.
//

import Foundation
import UIKit

class topRecipes : UIViewController {
    
    var tempUser : AccountInformation!
    
    @IBOutlet var recipeDayImage: UIImageView!
    
    @IBOutlet var recipeDayLabel: UILabel!
    
    
    
    @IBOutlet var recipeWeekImage: UIImageView!
    
    @IBOutlet var recipeWeekLabel: UILabel!
    
    
    
    @IBOutlet var recipeMonthImage: UIImageView!
    
    @IBOutlet var recipeMonthLabel: UILabel!
    
    var recipeDay = Recipe(calories: 39, name: "Southern Deviled Eggs", dishType: "Egg Dish", cost: 12.99, image: #imageLiteral(resourceName: "recipe of the Day"))
    var recipeWeek = Recipe(calories: 406, name: "Sesame Grilled Salmon", dishType: "Sea Food", cost: 20.99, image: #imageLiteral(resourceName: "recipe of the Month"))
    var recipeMonth = Recipe(calories: 460, name: "Ultimate Sandwich Bagels", dishType: "Sandwich", cost: 18.99, image: #imageLiteral(resourceName: "recipe of the Year"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeDayImage.image = recipeDay.image
        recipeWeekImage.image = recipeWeek.image
        recipeMonthImage.image = recipeMonth.image
        
        recipeDayLabel.text = "\(recipeDay.name)\n \nType of dish: \(recipeDay.dishType) \nCalories: \(recipeDay.calories)g\nTotal cost: $\(recipeDay.cost)"
        
        recipeWeekLabel.text = "\(recipeWeek.name)\n \nType of dish: \(recipeWeek.dishType) \nCalories: \(recipeWeek.calories)g\nTotal cost: $\(recipeWeek.cost)"
        
        recipeMonthLabel.text = "\(recipeMonth.name)\n \nType of dish: \(recipeMonth.dishType) \nCalories: \(recipeMonth.calories)g\nTotal cost: $\(recipeMonth.cost)"
        
        
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
}
