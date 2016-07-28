//
//  ViewController.swift
//  FunFacts
//  Created by Chris Vanderhorst on 25/07/2016.
//  Copyright © 2016 Chris Vanderhorst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    let factModel = FactModel();
  
    
@IBOutlet weak var funfactLabel: UILabel!
    @IBOutlet var funFsctButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funfactLabel.text=factModel.facts[0];
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFsctButton.tintColor = randomColor
        funfactLabel.text = factModel.getRandomFact()
    }
    
    
    

}

