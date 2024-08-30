//
//  Profile.swift
//  Saviori_App
//
//  Created by 2b on 3/25/24.
//

import Foundation
import UIKit

class Profile: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet var favoriteRecipesTableView: UITableView!
    
    @IBOutlet var preferredIngredientsTableView: UITableView!
    
    var tempUser : AccountInformation! = AccountInformation(user: "testuser", password: "password123", fullname: "John Doe", address: "445 Scotland Rd", email: "user@gmail.com", phoneNumber: 1234567890, likes: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g")], dislikes: [Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")], allergies: ["Peanuts", "Milk", "Soy", "Pineapple"], favoritedRecipes: [Recipe(recipeName: "Example Recipe 1", calories: 200, name: "Example Recipe 1", dishType: "Seafood", cost: 5.99, ingredients: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g")], image: #imageLiteral(resourceName: "download (1)")), Recipe(recipeName: "Example Recipe 2", calories: 200, name: "Example Recipe 2", dishType: "Soup", cost: 24.99, ingredients: [Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")], image: #imageLiteral(resourceName: "egg-drop-soup-square"))], prefferedIngredients: [Ingredient(brandName: "Hormel Black Label Original Bacon", ingredientGroup: "Bacon", cost: 4.98, image: #imageLiteral(resourceName: "Hormel Black Label Original Bacon") , calories: 100, storesAvailable: ["Walmart"], totalFat: 8, cholestrol: 25, sodium: 370, totalCarbohydrate: 0, protein: 6,  servings: 5, servingSize: "2 Pan-Fried Slices"), Ingredient(brandName: "Bos’n Frozen Seafood Raw Giant Calamari Rings", ingredientGroup: "Seafood", cost: 5.88, image: #imageLiteral(resourceName: "Bos’n Frozen Seafood Raw Giant Calamari Rings"), calories: 60, storesAvailable: ["Walmart"], totalFat: 1, cholestrol: 125, sodium: 150, totalCarbohydrate: 0, protein: 14, iron: 0.72, calcium: 52, servings: 5, servingSize: "85g"), Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg"),Ingredient(brandName: "Vital Farms Pasture Raised Grade A Large Brown Eggs", ingredientGroup: "Eggs", cost: 6.12, image: #imageLiteral(resourceName: "Vital Farms Pasture Raised Grade A Large Brown Eggs"), calories: 70, storesAvailable: ["Walmart"], totalFat: 5, cholestrol: 185, sodium: 70, totalCarbohydrate: 0, protein: 6, servings: 12, servingSize: "1 egg")])
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var likesText = ""
        var dislikesText = ""
        for i in tempUser.likes {
             likesText += "\n" + i.brandName + "\n"
        }
        for i in tempUser.dislikes {
             dislikesText += "\n" + i.brandName + "\n"
        }
        for i in tempUser.allergies {
             dislikesText += "\n" + i + "\n"
        }
        
        if likesText != "" {
            likesTextView.text = likesText
        }
        
        if dislikesText != "" {
            dislikesTextView.text = dislikesText
        }
       
        nameLabel.text = tempUser.user
        fullnameLabel.text = tempUser.fullname
        informationLabel.text = ""
        if let address = tempUser.address {
            informationLabel.text! += "Address: \(address)\n"
        }
        informationLabel.text! += "Budget: $\(tempUser.budget)\n"
        if let email = tempUser.email {
            informationLabel.text! += "Email: \(email)\n"
        }
        if let phoneNumber = tempUser.phoneNumber {
            informationLabel.text! += "Phone Number: \(phoneNumber)\n"
        }
        profilePicture.image = tempUser.profilePic
        profilePicture.layer.masksToBounds = true
        profilePicture.layer.borderWidth = 1.5
        profilePicture.layer.borderColor = UIColor.systemOrange.cgColor
        profilePicture.layer.cornerRadius = profilePicture.bounds.width / 6
        
        self.favoriteRecipesTableView.delegate = self

        self.favoriteRecipesTableView.dataSource = self
        
        self.preferredIngredientsTableView.delegate = self

        self.preferredIngredientsTableView.dataSource = self
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var fullnameLabel: UILabel!
    @IBOutlet var informationLabel: UILabel!
    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var tabBorder: UITabBarItem!
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView is preferredIngredientsTableView {
            return tempUser.prefferedIngredients.count
        } else {
            return tempUser.favoritedRecipes.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "favorites", for: indexPath) as! profileTableViewCell
        if cell is profileFavoriteRecipesTableViewCell  {
            cell.imageS.image = tempUser.favoritedRecipes[indexPath.row].image
            
            cell.recipeName.text = tempUser.favoritedRecipes[indexPath.row].name
            
            cell.descriptionLabel.text = "Dish Type: \(tempUser.favoritedRecipes[indexPath.row].dishType) \nCalories: \(tempUser.favoritedRecipes[indexPath.row].calories) \nCost: \(tempUser.favoritedRecipes[indexPath.row].cost) \nIngredients: \(tempUser.favoritedRecipes[indexPath.row].ingredients)"
            
        } else if cell is profilePreferredIngredientsTableViewCell{
            cell.imageS.image = tempUser.prefferedIngredients[indexPath.row].image
            
            cell.recipeName.text = tempUser.prefferedIngredients[indexPath.row].brandName
            
            cell.descriptionLabel.text = "Cost: $\(tempUser.prefferedIngredients[indexPath.row].cost) \nCalories: \(tempUser.prefferedIngredients[indexPath.row].calories)g \nStores Available: \(tempUser.prefferedIngredients[indexPath.row].storesAvailable)"
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
               
    }

    @IBOutlet var likesTextView: UITextView!
    
    @IBOutlet var dislikesTextView: UITextView!
    
}
