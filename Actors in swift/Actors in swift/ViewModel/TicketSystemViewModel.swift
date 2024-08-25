//
//  TicketSystemViewModel.swift
//  Actors in swift
//
//  Created by  Prince Shrivastav on 25/08/24.
//

import Foundation

class TicketSystemViewModel {
    
    private let companyName: String = "Indigo airlines"
    private var availableTickets: [String] = ["1A","2A","1B","2B","1C","2C"]
    
    private let barrier = DispatchQueue(label: "barrier")
    
    func getAllTickets() -> [String] {
        barrier.sync(flags: .barrier) {
            availableTickets
        }
    }
    func bookedTicket() -> String {
        barrier.sync(flags: .barrier) {
            let booked = availableTickets.first ?? ""
            availableTickets.removeFirst()
            return booked
        }
        
    }
}
