//
//  AboutViewController.swift
//  FunFacts
//
//  Created by Chris Vanderhorst on 15/09/2016.
//  Copyright © 2016 Chris Vanderhorst. All rights reserved.
//

import UIKit
import Foundation

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        let urlString = "https://api.forecast.io/forecast/d3250bf407f0579c8355cd39cdd4f9e1/37.5673776,122.048951"
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with:url!, completionHandler: {(data, response, error) in
            if error != nil {
                print(error)
            } else {
                do {
                    
                    let parsedData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String:Any]
                    let currentConditions = parsedData["currently"] as! [String:Any]
                    
                    print(currentConditions)
                    
                    let currentTemperatureF = currentConditions["temperature"] as! Double
                    print(currentTemperatureF)
                    
                    
                    let currentConditions2 = parsedData["currently"] as! [String:Any]
                    
                    for (key, value) in currentConditions2 {
                        print("\(key) - \(value) ")
                    }
                    
                    
                    
                } catch let error as NSError {
                    print(error)
                }
            }
            
        }).resume()
    
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
