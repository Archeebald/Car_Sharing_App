//
//  ViewController.swift
//  Car_Sharing_App
//
//  Created by Archeebald on 23.01.2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInViewController: UIViewController {
    
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func checkAuthorisation(_ sender: UIButton) {
        
        let url = "http://cars.areas.su/login?username=\(inputLogin.text!)$password=\(inputPassword.text!)"
        
        AF.request(url, method: .post).validate().responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(value)
            case .failure(let error):
                print("Sorry, your password or login is not right: \(error.localizedDescription)")
            }
        }
                
            }
        
        
     
    
  
            
      
    
    
    
    
    
      
                
    }


        
    
    



}
