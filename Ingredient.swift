//
//  Ingredient.swift
//  Saviori_App
//
//  Created by 2b on 3/11/24.
//

import Foundation

//
//  Ingredient.swift
//  Saviori_App
//
//  Created by 2b on 2/28/24.
//

import Foundation
import UIKit

public struct Ingredient : CustomStringConvertible {
    var brandName : String
    var ingredientGroup : String
    var cost : Double
    var image : UIImage
    var calories : Int
    var storesAvailable : [String]
    var totalFat : Int
    var cholestrol : Int
    var sodium : Int
    var totalCarbohydrate : Int
    var protein : Int
    var potassium : Int = 0
    var iron : Double = 0
    var calcium : Int = 0
    var totalSugars : Int = 0
    var saturatedFat : Int = 0
    var transFat : Int = 0
    var dietaryFat : Int = 0
    var servings : Int
    var servingSize : String
    var containLabel : [String] = []
    public var description: String {
        return brandName
    }
}


