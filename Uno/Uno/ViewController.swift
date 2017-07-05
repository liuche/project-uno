//
//  ViewController.swift
//  Uno
//
//  Created by Michael Comella on 7/5/17.
//  Copyright © 2017 Mozilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Add sample view to verify ViewController is instantiated.
        let testTextView = UITextView()
        testTextView.text = "Hello world!"
        testTextView.textAlignment = .center
        testTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testTextView)

        let constraints = [
            testTextView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
            testTextView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor),
            testTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            testTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]

        NSLayoutConstraint.activate(constraints)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

