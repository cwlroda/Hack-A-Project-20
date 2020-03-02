//
//  ViewController.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import UIKit


class PostHelpController: UIViewController {
    
    @IBOutlet weak var thanku: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var connect: UIButton!
    @IBOutlet weak var back: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.thanku.text = "Thank you! You just made Wei Loon's day a little bit better!"
        let url = URL(string: "https://i.imgur.com/6gvAIe6.png"
)!
        downloadImage(from: url)
        connect.layer.cornerRadius = 20
        connect.clipsToBounds = true
        back.layer.cornerRadius = 20
        back.clipsToBounds = true
    }
    
    func downloadImage(from url: URL) {
        print("Download Started")
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() {
                self.image.image = UIImage(data: data)
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    @IBAction func didTapFB(sender: AnyObject) {
      UIApplication.shared.open(URL(string: "http://www.facebook.com/cwlroda")!)
    }
}
