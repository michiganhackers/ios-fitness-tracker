//
//  HomeViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/8/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//
//test comm

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation
    
    // This method allows modal view controllers to dismiss themselves when
    // presented from this view controller.
    @IBAction func unwind(unwindSegue: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let currentRunVC = segue.destination as? CurrentRunViewController {
            currentRunVC.startWorkout()
        }
    }
}

