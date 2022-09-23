//
//  ViewController.swift
//  Motobycle
//
//  Created by HungNguyen on 2022/09/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }

    private func setup() {
        title = "Đăng Nhập"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    @IBAction
    func onEyeButtonTapped(_ sender: Any) {
        let isShowPassword = !passwordTextField.isSecureTextEntry
        if isShowPassword {
            passwordTextField.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "IconEyeClose"), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "IconEye"), for: .normal)
        }
    }

}

