//
//  ViewController.swift
//  FontAwesome
//
//  Created by qiuncheng on 02/06/2020.
//  Copyright (c) 2020 qiuncheng. All rights reserved.
//

import UIKit
import FontAwesome

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.fa.setFont(.regular, size: 40)
        label.fa.text = FontAwesome.Solid.Others.fontawesomelogofull
        label.textColor = .orange
        label.sizeToFit()
        label.center = CGPoint(x: view.center.x, y: view.center.y - 200)
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
