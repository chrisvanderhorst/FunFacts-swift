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
    
    
    @IBAction func aboutClick() {
        
        let vc = AboutViewController(nibName: "AboutViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funfactLabel.text=factModel.facts[0];
    
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFsctButton.tintColor = randomColor
        funfactLabel.text = factModel.getRandomFact()
    }

}

