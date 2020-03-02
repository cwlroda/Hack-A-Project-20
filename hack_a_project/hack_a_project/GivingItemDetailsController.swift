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
    
    @IBOutlet weak var help: UIButton!
    @IBOutlet weak var map: MKMapView!
    var received_title: String? = "Bananas"
    var received_description: String? = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet dui vel ex ornare accumsan. Morbi suscipit sem at magna ornare auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat."
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
        help.layer.cornerRadius = 20
        help.clipsToBounds = true
    }
    
    
}

