//
//  CurrentRunViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/10/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class CurrentRunViewController: UIViewController {
    
    // MARK: - Methods
    func startWorkout() {
        let currentDateTime = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        // TODO: Start tracking the workout. Record the current time, start
        // tracking GPS, etc.
    }
    
    // MARK: - IBOutlets and IBActions
    // TODO: Add an IBAction that is called when the "End" button is tapped.
    // In this method, stop tracking the workout and record its data.

    // MARK: - View event handlers
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
