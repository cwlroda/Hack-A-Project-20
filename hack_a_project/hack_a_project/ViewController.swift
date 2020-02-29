//
//  ViewController.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var pickerData: UIPickerView!
    
    
    var data : [String] = [String]()
    var iconClick = true

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData?.delegate = self
        pickerData?.dataSource = self
        data = ["Give", "Request", "Too Good To Go"]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    @IBAction func login(_ sender: Any) {
        let text: String = field.text ?? ""
        Singleton.getSharedState().name = text
    }


}

