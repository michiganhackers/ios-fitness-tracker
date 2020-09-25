//
//  RecordWorkoutViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/16/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit
import HealthKit

class RecordWorkoutViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var workoutValues: [(HKWorkoutActivityType, String)] = [
        (HKWorkoutActivityType.cycling, "Cycling"),
        (HKWorkoutActivityType.running, "Running"),
        (HKWorkoutActivityType.swimming, "Swimming"),
        (HKWorkoutActivityType.equestrianSports, "Equestrian Sports"),
        (HKWorkoutActivityType.other, "Other")
    ]
    
    // MARK: - View event handlers
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutPicker.delegate = self
        workoutPicker.dataSource = self
    }
    
    // MARK: - IBOutlets and IBActions
    @IBOutlet var cancelButton: UIButton!
    
    @IBOutlet var startStopButton: UIButton!
    var workoutStart: Date? = nil
    
    @IBOutlet weak var workoutPicker: UIPickerView!
    
    @IBAction func cancelWorkout(_ sender: Any) {
        workoutStart = nil
    }
    
    @IBAction func startStopWorkout() {
        if workoutStart == nil {
            startStopButton.setTitle("Stop", for: UIControl.State.normal)
            workoutStart = Date()
        } else {
            startStopButton.setTitle("Start", for: UIControl.State.normal)
            let workoutType = workoutValues[workoutPicker.selectedRow(inComponent: 0)].0
            print(HKWorkout(activityType: workoutType, start: workoutStart!, end: Date()))
            workoutStart = nil
            
            // TODO: Save workout
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return workoutValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return workoutValues[row].1
    }
}
