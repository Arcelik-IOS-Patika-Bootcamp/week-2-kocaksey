//
//  ViewController.swift
//  homework_2_seyhunKocak
//
//  Created by Seyhun Koçak on 31.05.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var balanceLabel: UILabel!
    var balance = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Passing data to first view controller with closure
    
    // Calculating total balance
    
    @IBAction func depositButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = {text in
            self.balance = Int(text!)! + self.balance
            self.balanceLabel.text = String(self.balance) + "   TRY"
            
            
            
        }
        present(vc, animated: true)
    }
    // Passing data to first view controller with closure
    
    // Calculating total balance
    @IBAction func withdrawButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = {text in
            self.balance =  self.balance - Int(text!)!
            self.balanceLabel.text = String(self.balance) + "   TRY"
            
            
            
        }
        present(vc, animated: true)
    }
    
}

