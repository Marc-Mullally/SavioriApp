//
//  AccountInformation.swift
//  Saviori_App
//
//  Created by 2b on 3/25/24.
//

import Foundation
import UIKit

struct AccountInformation {
    var user : String
    var password : String
    var profilePic : UIImage = #imageLiteral(resourceName: "DefaultProfilePicture")
    var fullname : String?
    var address : String?
    var budget : Double = 0.0
    var email : String?
    var phoneNumber : Int?
    var likes : [Ingredient] = []
    var dislikes : [Ingredient] = []
    var allergies : [String] = []
    var favoritedRecipes : [Recipe] = []
    var prefferedIngredients : [Ingredient] = []
    
    
}
