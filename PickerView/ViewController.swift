//
//  ViewController.swift
//  PickerView
//
//  Created by A_Z on 6/20/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource , UITextFieldDelegate {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArraryOfGender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ArraryOfGender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        LaGender.text = ArraryOfGender[row]
    }
    var ArraryOfGender = ["male" , "Female" , "Other"]
    

    @IBOutlet weak var LaGender: UILabel!
    @IBOutlet weak var txtHight: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var DisplayBestWight: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PickerView.delegate = self
        PickerView.dataSource = self
    }

    @IBAction func ButBestWight(_ sender: Any) {
        
        let Age : Int = Int(txtAge.text!)!
        let Hight : Int = Int(txtHight.text!)!
        let BestWight = (Hight*10) - (Age/5)
        
        DisplayBestWight.text = "BestWeight\(BestWight)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}

