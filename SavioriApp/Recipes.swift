


//
//  Recipes.swift
//  Saviori_App
//
//  Created by 11k on 2/29/24.
//

import Foundation
import UIKit

struct Recipe {
    var recipeName: String = ""
    var calories : Int
    var name : String
    var dishType : String
    var cost : Double
    var ingredients: [Ingredient] = []
    var image : UIImage
    var likes : Int = 0
    var favorites : Int = 0
}

struct RecipeList {
    
    var name: String = ""
    var recipelist: [sumRecipe] = []
    var imageView: UIImage
    
}

struct sumRecipe {

    var recipeName: String = ""
    var ingredients: [String] = []

}

////  Recipes.swift
////  Saviori_App
////
////  Created by 11k on 2/29/24.
////
//
//import Foundation
//import UIKit
//
//struct RecipeList{
//    var name: String
//    var recipelist: [Recipe]
//    var imageView: UIImage
//
//
//
//
//}
//
//struct Recipe {
//
//    var recipeName: String = ""
//    var calories : Int = 0
//    var name : String = ""
//    var dishType : String = ""
//    var cost : Double = 0.0
//    var ingredients : [Ingredient] = []
//    var image : UIImage? = nil
//
//
//}
//
//
