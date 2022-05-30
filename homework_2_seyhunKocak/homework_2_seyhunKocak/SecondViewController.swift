//
//  SecondViewController.swift
//  homework_2_seyhunKocak
//
//  Created by Seyhun Koçak on 31.05.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    public var completionHandler: ((String?)-> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    @IBAction func confirmButtonClicked(_ sender: Any) {
        completionHandler?(amountField.text)
        
        dismiss(animated: true, completion: nil)
    
    
    }
    
}
