//
//  RadiusController.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import Foundation
import UIKit

class RadiusController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerData: UIPickerView!
    var data : [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData?.delegate = self
        pickerData?.dataSource = self
        data = ["1km", "2km", "5km", "10km"]
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
}
