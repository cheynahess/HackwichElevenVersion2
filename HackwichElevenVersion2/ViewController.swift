//
//  ViewController.swift
//  HackwichElevenVersion2
//
//  Created by Cheyna Hess on 4/5/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Outback Steakhouse", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.328420469332, longitude: -158.08687566838))
        mapView.addAnnotation(restaurantTwo)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center:
            location.coordinate,latitudinalMeters: CLLocationDistance(regionRadius),longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
    }


}
