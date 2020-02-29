//
//  ViewController.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import UIKit
import MapKit

class GivingItemDetailsController: UIViewController {
    
    @IBOutlet weak var item_title: UILabel!
    
    @IBOutlet weak var item_description: UILabel!
    
    @IBOutlet weak var accept_button: UIButton!
    @IBOutlet weak var map: MKMapView!
    var received_title: String? = "Bananas"
    var received_description: String? = "I'm hungry"
    var lat: CLLocationDegrees = 51.4988
    var lng: CLLocationDegrees = 0.1749
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        self.item_title.text = received_title
        self.item_description.text = received_description

        let center = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.map.setRegion(region, animated: true)
//        map.add
        accept_button.layer.cornerRadius = 20
        accept_button.clipsToBounds = true
    }
    
    
}

