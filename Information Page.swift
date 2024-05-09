//
//  Information Page.swift
//  Saviori_App
//
//  Created by 2b on 3/14/24.
//

import Foundation
import UIKit

class InformationPageController: UIViewController {
   var ingredient:Ingredient?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleName.text = ingredient?.brandName
        image.image = ingredient?.image
        subtitleName.text = ingredient?.ingredientGroup
        descriptionLabel.text = "Calories: \(ingredient?.calories ?? 0)g \nTotal Fat: \(ingredient?.totalFat ?? 0)g \nCholestrol: \(ingredient?.cholestrol ?? 0)mg \nSodium: \(ingredient?.sodium ?? 0)mg \nTotal Carbohydrates: \(ingredient?.totalCarbohydrate ?? 0)g \nProtein: \(ingredient?.protein ?? 0)g \nPotassium: \(ingredient?.potassium ?? 0)mg \nIron: \(ingredient?.iron ?? 0)mg \nCalcium: \(ingredient?.calcium ?? 0)mg \nTotal Sugars: \(ingredient?.totalSugars ?? 0)g \nSaturated Fat: \(ingredient?.saturatedFat ?? 0)g \nTrans Fat: \(ingredient?.transFat ?? 0)g \nDietary Fat: \(ingredient?.dietaryFat ?? 0)g \nServings: \(ingredient?.servings ?? 0) Servings \nServing Size: \(ingredient?.servingSize ?? "")"

    }
   
    @IBOutlet var titleName: UILabel!
    
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var subtitleName: UILabel!
    
    @IBOutlet var descriptionLabel: UITextView!
    
}
