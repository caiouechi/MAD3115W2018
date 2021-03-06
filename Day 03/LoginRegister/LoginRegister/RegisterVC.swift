//
//  RegisterVC.swift
//  LoginRegister
//
//  Created by Jigisha Patel on 2018-02-21.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
   
    
    @IBOutlet weak var cityPicker: UIPickerView!
    @IBOutlet var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPostalCode: UITextField!
    @IBOutlet weak var txtContactNumber: UITextField!
    @IBOutlet weak var dateOfBirth: UIDatePicker!
    var cityList: [String] = ["Vancouver", "Ottawa", "Toronto", "Calgary", "Windsor", "Ajax", "Pickering", "Admenton", "Jasper", "Quebec", "Alberta", "British Columbia", "Montreal"]
    var selectedCityIndex: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        let btnSubmit = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.cityList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.cityList[row]
    }

    @objc private func displayValues(){
        //first collumn
        self.selectedCityIndex = self.cityPicker.selectedRow(inComponent: 0)
        
        let allData: String = "\(self.txtName.text!) \n \(self.txtContactNumber.text!) \n (self.dateOfBirth.date) \n \(self.cityList[selectedCityIndex]) \n \(self.txtPostalCode.text!) \n \(self.txtEmail.text!)"
        
        
        
        //Action sheet
        let infoAlert = UIAlertController(title: "Verify your details", message: allData, preferredStyle: .actionSheet)
        
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        self.present(infoAlert, animated: true)
    }
    
    func displayWelcomeScreen(){
        let welcomeSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "WelcomeScreen") as! WelcomeVC
        
        
        welcomeVC.welcomeTitle = txtName.text!
    navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add data in picker
        self.cityPicker.delegate = self
        self.cityPicker.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
