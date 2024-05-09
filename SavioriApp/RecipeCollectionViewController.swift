//
//  RecipeCollectionViewController.swift
//  Saviori_App
//
//  Created by 11k on 2/29/24.
//

import UIKit


class RecipeCollectionViewController: UICollectionViewController {
    let columnLayout = Layout(
        cellsPerRow:3,
        minimumInteritemSpacing: 10,
        minimumLineSpacing: 30,
        sectionInset: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    )
    
    @IBOutlet weak var AddOutlet: UIBarButtonItem!
    
    let countires = [Recipe(name: "Chinese",
                          recipelist:
                            [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken", "Rice"]), RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "download")),
                     Recipe(name: "Cubian",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "cuba flag")),
                     Recipe(name: "Greek",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "greek")),
                     Recipe(name: "Indian",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "Indian flag")),
                     Recipe(name: "Japanese",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "Japan")),
                     Recipe(name: "Haitian",recipelist:
                                [RecipeList(recipeName: "Pate (Haitian Beef patties)", ingredients: ["1 Pound Ground Beef(Codfish or chicken)", "1 Diced medium onion", "3 minced garlic cloves", "1 diced medium shallot", "1 tsp lime juice", "1 teaspoon seasoning salt", "1 tbsp tomato paste", "2 tsp olive oil", "2 cups all purpose flour", "1 cup of water", "1 cup of lard"]),RecipeList(recipeName: "Soup Joumou(Squash Soup)", ingredients: ["stew beef", "fresh lime juice", "onion", "green bell pepper", "green onion", "garlic", "fresh parsley", "extra virgin olive oil", "kosher salt", "black pepper", "White pepper", "cayenne pepper", "squash", "potatoes", "carrots", "celery", "turnip", "better than boullion beef flavored", "fresh thyme", "cabbage", "pasta"]), RecipeList(recipeName: "Epis (Haitian Spice Blend)", ingredients: ["Onion", "Bell pepper", "Scallion", "Garlic Cloves", "Thyme", "Parsley", "Lime or vinegar", "Olive Oil", "Scoth Bonnet", "Celery", "Cloves"]), RecipeList(recipeName: "Diri Kole (Rice and Beans)", ingredients: ["1/2 cup of small red beans","2 cups of Jasmine Elephant Rice", "1 tsp of seasoning salt", "1 chicken bouillon cubes", "1 tsp of black pepper", "1 tbsp of epis", "1 scotch bonnet pepper", "1 sprig of fresh thyme", "1 sprig of parsley", "4-5 whole cloves", "1 clove of garlic", "1/2 medium onions, diced", "1 tsp of minced garlic", "1 bay leaf", "1/4 cup of olive oil"])],imageView: #imageLiteral(resourceName: "Haitian")),
                     Recipe(name: "American",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "american")),
                     Recipe(name: "Salvadorian",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "greek")),
                     Recipe(name: "Jamaican",recipelist:
                        [RecipeList(recipeName: "Cantonese - String Bean Chicken", ingredients: ["Beans", "chicken"])], imageView: #imageLiteral(resourceName: "Jamaican")),
                
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ]
    

    
    

    
    
    
    let recipes = [Recipe(name: "Chinese", recipelist: [RecipeList(recipeName: "Cantonese - String Bean Chicken"), RecipeList(recipeName: "Cantonese - Clay Pot Chicken Rice"), RecipeList(recipeName: "Scallion Pancake"),RecipeList(recipeName: "Steamed Pork Buns"), RecipeList(recipeName: "Lazy Wonton Soup"), RecipeList(recipeName: "Lo Mein"), RecipeList(recipeName: "Pork Dumplings"), RecipeList(recipeName: "Peking Duck"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "download")), Recipe(name: "Cubian", recipelist: [RecipeList(recipeName: "Rice"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "cuba flag")), Recipe(name: "Greek", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "greek")), Recipe(name: "Indian", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),], imageView: #imageLiteral(resourceName: "Indian flag")), Recipe(name: "Japanese", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "Japan")), Recipe(name: "Haitian", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "Haitian")), Recipe(name: "American", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "american")),Recipe(name: "Salvadorian", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "salvadorian")), Recipe(name: "Jamaican", recipelist: [RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"), RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty"),RecipeList(recipeName: "Empty")], imageView: #imageLiteral(resourceName: "Jamaican"))
                   
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("dd")
        collectionView?.collectionViewLayout = columnLayout
        collectionView?.contentInsetAdjustmentBehavior = .always
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return recipes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "table", for: indexPath) as! RecipeCollectionViewCell
        
        
        cell.imageView.image = recipes[indexPath.item].imageView
        cell.recipeName.text = recipes[indexPath.item].name
        
        cell.imageView.layer.borderWidth = 1.0
        cell.imageView.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView?.collectionViewLayout.invalidateLayout()
        super.viewWillTransition(to: size, with: coordinator)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? recipeListTableViewController,
            let indexPath = collectionView.indexPathsForSelectedItems?.first {
               let recipe = countires[indexPath.item]
               let recipesList = recipe.recipelist
               destinationController.recipes = recipesList
           }
        
    }
    
}

