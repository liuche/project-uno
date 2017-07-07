/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

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

        let emailScreenButton = UIButton()
        emailScreenButton.setTitle("Email verification", for: .normal)
        emailScreenButton.addTarget(self, action: #selector(ViewController.emailButtonClick), for: .touchUpInside)
        view.addSubview(emailScreenButton)

        testTextView.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom)
            make.height.equalTo(30)
            make.leading.trailing.equalTo(view)
        }

        emailScreenButton.snp.makeConstraints{ make in
            make.top.equalTo(testTextView.snp.bottom)
            make.height.equalTo(30)
            make.leading.trailing.equalTo(view)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func emailButtonClick() {
        let loginViewController = LoginViewController()
        self.present(loginViewController, animated: true, completion: nil)
    }


}

