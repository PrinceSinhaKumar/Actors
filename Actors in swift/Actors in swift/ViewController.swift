//
//  ViewController.swift
//  Actors in swift
//
//  Created by  Prince Shrivastav on 25/08/24.
//

import UIKit

class ViewController: UIViewController {

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baViewModel = BankAccountViewModel()

        let concurrentQueue1 = DispatchQueue(label: "com.concurrent.queue1",qos: .default, attributes: .concurrent)
        let concurrentQueue2 = DispatchQueue(label: "com.concurrent.queue2",qos: .default, attributes: .concurrent)
        
        concurrentQueue1.async {
           baViewModel.debetMoneyFromAccount(amount: 100)
        }
        concurrentQueue2.async {
            baViewModel.debetMoneyFromAccount(amount: 600)
        }
        
    }


}

