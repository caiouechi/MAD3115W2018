//
//  ViewController.swift
//  LoginDay2
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textboxEmail: UITextField!
    @IBOutlet weak var textboxPassword: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        let btnSubmit = UIBarButtonItem(title: "Submit", style:.plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit;
    }
    
    @objc func displayValues(){
        let infoAlert = UIAlertController(title: "Verify", message: "Please verify your details", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { _ in self.displayWelcomeScreen()}))
        
        self.present(infoAlert, animated: true)
    }
    
    //showing the home screen
    func displayWelcomeScreen(){
        let welcomeSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "HomeScreen") as! HomeScreen
        
        navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func txtButtonClick(_ sender: UIButton) {
        
        let Password = textboxPassword.text;
        let Email = textboxEmail.text;
    
        if (Email == "test" && Password ==  "teste"){
            let infoAlert = UIAlertController(title: "Login successful", message: "you are authenticated", preferredStyle: .alert)
            
            infoAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
      
    }

    @IBAction func RegisterClickButton(_ sender: Any) {
        
        //first storboard
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        //now take the view controller from the storyboard, passing the viewID
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegisterID");
        
        //call the view
        //self.present(registerVC, animated: true, completion: nil)
        
        navigationController?.pushViewController(registerVC, animated: true)
      
    }
    
    


}

