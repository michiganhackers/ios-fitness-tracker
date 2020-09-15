//
//  ListWorkoutsViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/10/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class ListWorkoutsViewController: UITableViewController {
    // MARK: - Member variables
    private static let cellIdentifier = "ListWorkoutsCell"
    private let store = WorkoutStore()
    
    // MARK: - Initializers
    init() {
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - UITableViewDataSource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store?.getAll().count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: ListWorkoutsViewController.cellIdentifier,
            for: indexPath
        )
        
        let workout = store!.getAll()[indexPath.row]
        
        // TODO: Print the start date and duration in a nice format.
        cell.textLabel?.text = "Workout • \(workout.startDate) • \(workout.duration)"
        
        return cell
    }
    
    // MARK: - UITableViewDelegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO: Handle when rows are tapped (display details about the tapped workout)
    }
}
