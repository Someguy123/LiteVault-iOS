//
//  ViewController.swift
//  LiteVault
//
//  Created by Loshan Thevanesan on 18/07/2015.
//  Copyright © 2015 Loshan Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let litevaultURL = NSURL(string: "https://www.litevault.net")
        webView.loadRequest(NSURLRequest(URL: litevaultURL!))
        
    }

}

