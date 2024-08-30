//
//  logIn.swift
//  SavioriApp
//
//  Created by 2b on 5/10/24.
//

import Foundation
import UIKit

class logIn : UIViewController {
    
    var dataBase : [AccountInformation] = [AccountInformation(user: "testuser", password: "password123", fullname: "John Doe", address: "445 Scotland Rd", email: "user@gmail.com", phoneNumber: 1234567890, likes: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g")], dislikes: [Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")], allergies: ["Peanuts", "Milk", "Soy", "Pineapple"], favoritedRecipes: [Recipe(recipeName: "Example Recipe 1", calories: 200, name: "Example Recipe 1", dishType: "Seafood", cost: 5.99, ingredients: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g")], image: #imageLiteral(resourceName: "download (1)")), Recipe(recipeName: "Example Recipe 2", calories: 200, name: "Example Recipe 2", dishType: "Soup", cost: 24.99, ingredients: [Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")], image: #imageLiteral(resourceName: "egg-drop-soup-square"))], prefferedIngredients: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")])]
    
        
                                                              
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func signUpClicked(_ sender: Any) {
        
            performSegue(withIdentifier: "goToSignUp", sender: sender)

    }
    
    @IBAction func loginClicked(_ sender: Any) {
        if let username = usernameTextField.text, let password = passwordTextField.text {
            for user in dataBase {
                if user.user == username && user.password == password {
                   performSegue(withIdentifier: "login", sender: sender)
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? Profile {
            destinationController.tempUser = dataBase[0]
        }
    }
}
