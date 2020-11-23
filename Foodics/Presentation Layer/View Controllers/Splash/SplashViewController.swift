//
//  SplashViewController.swift
//  Foodics
//
//  Created by Mina on 11/23/20.
//  Copyright © 2020 Mina. All rights reserved.
//


import UIKit


class SplashViewController: GeneralViewController {

    //MARK: Life Cycle
    
     @IBOutlet weak var loader: UIActivityIndicatorView!
    
     override func viewDidLoad() {
         super.viewDidLoad()
        
    }
    
    //MARK: Layout
      
      override func initialiseLayout() {
          
        self.loader.color = Foodics_SecondColor
        getCategories()
          
      }
        
    //MARK: API
    
    func getCategories() {
           
           loader.startAnimating()
        
        NetworkService.shared.getCategories()
               
           .done { json -> Void in
               
               let response = json as! Response
            
                DataManager.shared.categoriesArr = response.data as! [Category]

               self.getProducts()

           }
           .catch { error in

                self.loader.stopAnimating()

               Utils.showAlert(alertTitle: Utils.getAppName(), alertMessage: error.localizedDescription, cancelTitle: Utils.getStringWithTag(tag: "Reload"), otherTitle: "", VC: self) { (Index) in
               
                   self.getCategories()
               }
           }
           
       }
    
    func getProducts() {
        
        NetworkService.shared.getProducts()
        
            .done { (json) in

                self.loader.stopAnimating()

                let response = json as! Response

                DataManager.shared.productsArr = response.data as! [Product]
             
                self.goToCategoriesScreen()

            }
            
            .catch { (error) in
                self.loader.stopAnimating()

                Utils.showAlert(alertTitle: Utils.getAppName(), alertMessage: error.localizedDescription, cancelTitle: Utils.getStringWithTag(tag: "Continue"), otherTitle: Utils.getStringWithTag(tag: "Reload"), VC: self) { (Index) in
                             
                    if (Index == 1) {
                        self.getProducts()
                    } else {
                        self.goToCategoriesScreen()
                    }
                }
            }
    }

  

}
