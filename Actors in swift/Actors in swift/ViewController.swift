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
            let booked = baViewModel.bookedTicket()
            print("Booked \(booked)")
        }
        concurrentQueue2.async {
            let available = baViewModel.getAllTickets()
            print("Available \(available)")
        }
        
    }


}

