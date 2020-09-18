//
//  CurrentRunViewController.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/10/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit
import MapKit

class CurrentRunViewController: UIViewController {
    
    
    //MARK: - Properties
    let locationManager = CLLocationManager()
    // MARK: - Methods
    func startWorkout() {
        // TODO: Start tracking the workout. Record the current time, start
        // tracking GPS, etc.
    }
    
    
    
    //Location services
    
    func checkLocationServices() {
      if CLLocationManager.locationServicesEnabled() {
        checkLocationAuthorization()
      } else {
        // Show alert letting the user know they have to turn this on.
      }
    }
    
    
    func checkLocationAuthorization() {
      switch CLLocationManager.authorizationStatus() {
      case .authorizedWhenInUse:
        mapView.showsUserLocation = true
      case .denied: // Show alert telling users how to turn on permissions
        break
      case .notDetermined:
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
      case .restricted: // Show an alert letting them know what’s up
       break
      case .authorizedAlways:
       break
      }
    }
    
    // MARK: - IBOutlets and IBActions
    // TODO: Add an IBAction that is called when the "End" button is tapped.
    // In this method, stop tracking the workout and record its data.
    
    
    @IBOutlet weak var mapView: MKMapView!

    

    // MARK: - View event handlers
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        
    }
}
