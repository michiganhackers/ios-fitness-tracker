//
//  HomeViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/8/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        recordButton.backgroundColor = .yellow
        recordButton.setTitleColor(.blue, for: UIControl.State.normal)
        recordButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        recordButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        recordButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
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

