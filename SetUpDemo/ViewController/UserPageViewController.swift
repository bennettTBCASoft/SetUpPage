//
//  UserPageViewController.swift
//  SetUpDemo
//
//  Created by TBCASoft-Bennett on 2022/2/17.
//

import UIKit

class UserPageViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
    var regionArray = ["blue", "red", "yellow", "green"]

    @IBOutlet weak var resetBtn: CustomizedButton!
    @IBOutlet weak var regionTextField: CustomizedTextField!
    @IBOutlet weak var mPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resetBtn.setUnderline("RESET USER HISTORY")
        
        self.mPickerView.delegate = self
        self.mPickerView.dataSource = self
        self.mPickerView.isHidden = true

        self.regionTextField.delegate = self
        self.regionTextField.inputView = self.mPickerView

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(pickerDoneButtonTapped))
        self.view.addGestureRecognizer(tap)
        
    }
    
    @objc func pickerDoneButtonTapped(){
        self.view.endEditing(true)
    }
    
    
// UIPickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return regionArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return regionArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.regionTextField.text = regionArray[row]
        self.regionTextField.layoutIfNeeded()
        self.view.endEditing(true)
        switch regionArray[row] {
        case "blue":
            return
        case "red":
            return .primary = UIColor.red
        case "yellow":
            return .primary = UIColor.yellow
        case "green":
            return .primary = UIColor.green
        default :
            return
        }
    }
    
// UITextView
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.regionTextField {
            self.mPickerView.isHidden = false
        }
    }
    
    
// UIButton
    @IBAction func switchMachantMode(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "Merchant") as! MerchantPageViewController
        
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)
    }
}
