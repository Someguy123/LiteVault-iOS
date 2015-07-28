//
//  GetRequest.swift
//  LiteVault
//
//  Created by Loshan on 27/07/2015.
//  Copyright © 2015 Loshan Industries. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class GetRequest : ViewController {
    
    
    @IBOutlet weak var identifierField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func loginButton(sender: AnyObject) {
        
        // The final URL is what will be (.GET) using Alamofire
        // baseURL is constant - and will have userURL added to the end of the link
        // userURL is the identifier input
        
        let baseURL = "https://www.litevault.net/wallet/load/"
        let userURL = identifierField.text
        let finalURL = baseURL + userURL!
        print(finalURL)
        
        // Alamofire will (.GET) the finalURL
        // Response of data is taken
        // Response is made into variable
        
        Alamofire.request(.GET, finalURL)
        .responseJSON { (_, _, data, _) in
            
            // SwiftyJSON will parse the wallet section
            
            let json = JSON(data!)
            if let walletAESData = json["wallet"].string {
                print(walletAESData)
            }
            
        }
    }
}