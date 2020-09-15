//
//  WorkoutStore.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/15/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import HealthKit

class WorkoutStore {
    // MARK: - Member variables
    private static let healthStore = HKHealthStore()
    
    // MARK: - Initializers
    init?() {
        // If health data is not available on the user's device, this class
        // cannot be initialized.
        if !HKHealthStore.isHealthDataAvailable() {
            return nil
        }
    }
    
    // MARK: - Methods
    func getAll() -> [HKWorkout] {
        // TODO: Fix this to get workouts from the user's HealthKit data.
        return [
            // Sample data
            HKWorkout(
                activityType: .tableTennis,
                start: Date(timeIntervalSinceNow: -3600.0),
                end: Date(timeIntervalSinceNow: 0.0),
                duration: 3600.0,
                totalEnergyBurned: HKQuantity(unit: .largeCalorie(), doubleValue: 300.0),
                totalDistance: nil,
                metadata: [:]
            )
        ]
    }
}
