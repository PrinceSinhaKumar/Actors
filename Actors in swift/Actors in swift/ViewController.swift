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
        
        Task {
            let tickets = await tsViewModel.bookedTicket()
            print("Booked \(tickets)")
        }
        
        Task {
            let tickets = await tsViewModel.getAllTickets()
            print("Available \(tickets)")
        }
//        
//        let queue1 = DispatchQueue(label: "q1", attributes: .concurrent)
//        let queue2 = DispatchQueue(label: "q2", attributes: .concurrent)
//        
//        queue1.async {
//            let tickets = tsViewModel.bookedTicket()
//            print("Booked \(tickets)")
//        }
//        
//        queue2.async {
//            let tickets = tsViewModel.getAllTickets()
//            print("Available \(tickets)")
//        }

        
    }
    
    
}

