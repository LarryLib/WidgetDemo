//
//  TodayViewController.swift
//  TestWidget
//
//  Created by larry on 2018/12/12.
//  Copyright © 2018 twofly. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(openURLContainingAPP))
        view.addGestureRecognizer(tap)
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    @objc func openURLContainingAPP() {
        extensionContext?.open(NSURL(string: "TestWidgetScheme://xxx")! as URL, completionHandler: { (b) in
            print(b)
        })
    }
}
