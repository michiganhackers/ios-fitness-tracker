//
//  RecordWorkoutViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/16/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class RecordWorkoutViewController: UIViewController {
    // MARK: - View event handlers
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBOutlets and IBActions
    @IBOutlet var cancelButton: UIButton!
    
    @IBOutlet var startStopButton: UIButton!
    
    @IBAction func startStopWorkout() {
        // TODO: Add some logic to start/stop the workout. This code is set up
        // to use the same button for start/stop, but you could change that if
        // you want.
    }
}
