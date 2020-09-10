//
//  HomeViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/8/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - IBActions and IBOutlets
    
    // This method allows modal view controllers to dismiss themselves when
    // presented from this view controller.
    @IBAction func unwind(unwindSegue: UIStoryboardSegue) {}
}

