//
//  ViewController.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import UIKit
import MapKit

class ItemDetailsController: UIViewController {
    
    
    @IBOutlet weak var item_title: UILabel!
    @IBOutlet weak var item_description: UILabel!
    @IBOutlet weak var item_expiry: UILabel!
    @IBOutlet weak var item_location: MKMapView!
    @IBOutlet weak var item_picture: UIImageView!
    
    @IBOutlet weak var accept_button: UIButton!
    var received_title: String? = "Bananas"
    var received_description: String? = "I'm hungry"
    var received_expiry: String? = "29/02/20"
    var received_picture: String = "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1024-80.jpg"
    var lat: CLLocationDegrees = 51.4988
    var lng: CLLocationDegrees = 0.1749
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.item_title.text = received_title
        self.item_description.text = received_description
        self.item_expiry.text = received_expiry
        let url = URL(string: received_picture)!
        downloadImage(from: url)
        let center = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.item_location.setRegion(region, animated: true)
//        map.add
        accept_button.layer.cornerRadius = 20
        accept_button.clipsToBounds = true
        
    }
    
    func downloadImage(from url: URL) {
        print("Download Started")
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() {
                self.item_picture.image = UIImage(data: data)
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}

