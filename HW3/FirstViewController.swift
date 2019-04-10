//
//  FirstViewController.swift
//  HW3
//
//  Created by Cristian Holmes on 3/19/19.
//  Copyright © 2019 Cristian Holmes. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        // Do any additional setup after loading the view, typically from a nib.
        super.loadView()
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        
        print(hour)
        let lightColor = UIColor.orange
        let darkColor = UIColor.purple
        switch hour
        {
        // hours 1 to 6
        case 1...6: self.view.backgroundColor = darkColor
            break
        // hours 7 to 18
        case 7...18: self.view.backgroundColor = lightColor
            break
        //hours 19 to 23 and 0
        case 19...23, 0: self.view.backgroundColor = darkColor
            break
        default:self.view.backgroundColor = darkColor
        }
    }
}

