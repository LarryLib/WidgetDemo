//
//  ViewController.swift
//  WidgetDemo
//
//  Created by larry on 2018/12/12.
//  Copyright © 2018 twofly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleLabel = UILabel()
        titleLabel.frame = view.bounds
        titleLabel.text = "我是App"
        titleLabel.textColor = .red
        titleLabel.backgroundColor = .white
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
    }
}

