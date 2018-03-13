//
//  User.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class User {

    var Email: String
    var Name: String
    var Password: String
    var PostalCode: String
    var ContactNumber: String
    var DateOfBirth: Date
    var City: String
    
    init(){
        self.Email = ""
        self.Name = ""
        self.Password = ""
        self.PostalCode = ""
        self.ContactNumber = ""
        self.DateOfBirth = Date();
        self.City = ""
    }
    
    init(pEmail: String, pName: String, pPassword: String,pPostalCode: String,pContactNumber: String,pDateOfBirth: Date, pCity: String){
        self.Email = pEmail
        self.Name = pName
        self.Password = pPassword
        self.PostalCode = pPostalCode
        self.ContactNumber = pContactNumber
        self.DateOfBirth = pDateOfBirth
        self.City = pCity
    }
    
}
