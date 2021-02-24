//
//  EXNCAddInfoViewController.swift
//  ExNotificationCenter
//
//  Created by Vijay on 24/02/21.
//

import UIKit

protocol SaveDelegate{
    
    func setName(name:String)
    
}

class EXNCAddInfoViewController: UIViewController {

    @IBOutlet weak var txtOutletSetInfo: UITextField!
    var testDelName:SaveDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnActionSaveInfoTouchUpInside(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: ["info": "\(txtOutletSetInfo.text!)"])
        testDelName?.setName(name: "\(txtOutletSetInfo.text!)")
        let fistVc = storyboard?.instantiateViewController(identifier: "EXNCHomeScreenViewController") as! EXNCHomeScreenViewController
        self.navigationController?.popViewController(animated: true)
    }
    
}
