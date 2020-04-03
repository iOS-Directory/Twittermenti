//
//  ViewController.swift
//  Twittermenti
//
//  Created by FGT MAC on 4/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    // Instantiation using Twitter's OAuth Consumer Key and secret
    let swifter = Swifter(consumerKey: "LTEeJyreyyuz4SWjVABuA1WKI", consumerSecret: "ajf107xfd6869heCG8Ptn8iztfFHBWPIxLkFGvsmoEwI7MKZcz")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func predictButtonPRessed(_ sender: UIButton) {
        
        if let searchQuery = textField.text {
            
            swifter.searchTweet(using: searchQuery, lang: "en", count: 100, tweetMode: .extended, success: { (results, metadata) in
                print(results)
            }) { (error) in
                print(error)
            }
        }
        
    }
    
    
}

