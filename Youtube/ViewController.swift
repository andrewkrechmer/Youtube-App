//
//  ViewController.swift
//  Youtube
//
//  Created by Andrew Krechmer on 2020-08-05.
//  Copyright © 2020 Andrew Krechmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        model.getVideos()
    
    }

}

