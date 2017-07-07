/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import FirebaseAuth
import SnapKit
import UIKit

class LoginViewController: UIViewController {
    let emailInput = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        let loginLabel = UITextView()
        loginLabel.text = "Login through email"
        loginLabel.textAlignment = .center
        view.addSubview(loginLabel)

        emailInput.backgroundColor = UIColor.white
        emailInput.placeholder = "Email"
        view.addSubview(emailInput)

        let verifyButton = UIButton()
        verifyButton.setTitle("Send email", for: .normal)
        verifyButton.addTarget(self, action: #selector(verifyButtonClick), for: .touchUpInside)
        view.addSubview(verifyButton)

        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom)
            make.height.equalTo(30)
            make.leading.trailing.equalTo(view)
        }

        emailInput.snp.makeConstraints{ make in
            make.top.equalTo(loginLabel.snp.bottom)
            make.height.equalTo(30)
            make.leading.trailing.equalTo(view)
        }

        verifyButton.snp.makeConstraints{ make in
            make.top.equalTo(emailInput.snp.bottom)
            make.height.equalTo(30)
            make.leading.trailing.equalTo(view)
        }
    }

    @IBAction func verifyButtonClick() {
        print("email text: " + emailInput.text!)
        Auth.auth().createUser(withEmail: emailInput.text!, password: "", completion: { (user, error) in
            // TODO: Password is required
            // Option 1: Firefox account token generation for email-only verification?
            // Option 2: Use traditional username/password (but maybe people will forget their password)
            print(error)
            Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                print("sent verification")
                print("error?\(error != nil)")
            })
        })
    }
}
