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
 
        let tsViewModel = TicketSystemViewModel()
        let concurrentQueue1 = DispatchQueue(label: "com.concurrent.queue1",qos: .default, attributes: .concurrent)
        let concurrentQueue2 = DispatchQueue(label: "com.concurrent.queue2",qos: .default, attributes: .concurrent)
        
        concurrentQueue1.async {
            Task {
                let booked = await tsViewModel.bookedTicket()
                print("Booked \(booked)")
            }
        }
        concurrentQueue2.async {
            
            Task {
                let available =  await tsViewModel.getAllTickets()
                print("Available \(available)")
            }
            
        }
        
    }
    
    
}

