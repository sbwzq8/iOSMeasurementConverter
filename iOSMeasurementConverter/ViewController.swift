//
//  ViewController.swift
//  iOSMeasurementConverter
//
//  Created by Sean Winegar on 9/12/17.
//  Copyright © 2017 Sean Winegar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var lengthPicker: UIPickerView!
    
    var initialLengthPicker: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.lengthPicker.delegate = self
        self.lengthPicker.dataSource = self
        
        initialLengthPicker = ["Volume", "Length", "Temp", "Weight"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
//        return 1
//    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return initialLengthPicker.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return initialLengthPicker[row]
    }


}

