//
//  ViewController.swift
//  Uno
//
//  Created by Michael Comella on 7/5/17.
//  Copyright © 2017 Mozilla. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Add sample view to verify ViewController is instantiated.
        let testTextView = UITextView()
        testTextView.text = "Hello world!"
        testTextView.textAlignment = .center
        view.addSubview(testTextView)

        testTextView.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom)
            make.bottom.equalTo(bottomLayoutGuide.snp.top)
            make.leading.trailing.equalTo(view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

