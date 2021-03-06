//
//  webPageVC.swift
//  Day4CustomTable
//
//  Created by MacStudent on 2018-02-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import WebKit


class webPageVC: UIViewController {

    
    //@IBOutlet weak var myWebView: UIWebView!
    //@IBOutlet weak var myWebView: WKWebView
    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadManualPage()
        
        //fill the webpage()
        //loadWebPage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadWebPage(){
        let url = NSURL (string: "https://www.google.com");
        let requestObj = NSURLRequest(url: url! as URL);
        //myWebView.loadRequest(requestObj as URLRequest);
        myWebView.load(requestObj as URLRequest);
    }

    func loadManualPage(){
        let localfilaPath = Bundle.main.url(forResource: "Pizza", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilaPath!);
        //myWebView.loadRequest(myRequest as URLRequest);
        myWebView.load(myRequest as URLRequest);
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
