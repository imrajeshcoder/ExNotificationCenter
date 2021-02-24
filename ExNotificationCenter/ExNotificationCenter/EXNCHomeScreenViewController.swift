//
//  EXNCHomeScreenViewController.swift
//  ExNotificationCenter
//
//  Created by Vijay on 24/02/21.
//

import UIKit

class EXNCHomeScreenViewController: UIViewController,SaveDelegate {
    func setName(name: String) {
        lblOutletInfo.text = name
    }
    

    @IBOutlet weak var lblOutletInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.getNotificationInfo(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }    
    @objc func getNotificationInfo(_ notification: NSNotification) {
       //     print(notification.userInfo ?? "")
       // lblOutletInfo.text = notification.userInfo!["info"]! as! String
     }
    @IBAction func btnActionAddInfoTouchUpInside(_ sender: Any) {
       // NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: ["info": "RRRR"])
        let addInfoVc = storyboard?.instantiateViewController(identifier: "EXNCAddInfoViewController") as! EXNCAddInfoViewController
        addInfoVc.testDelName = self
        self.navigationController?.pushViewController(addInfoVc, animated: true)
       
    }

}
