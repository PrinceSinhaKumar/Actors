//
//  TicketSystemViewModel.swift
//  Actors in swift
//
//  Created by  Prince Shrivastav on 25/08/24.
//

import Foundation

actor TicketSystemViewModel {
    
    private let companyName: String = "Indigo airlines"
    private var availableTickets: [String] = ["1A","2A","1B","2B","1C","2C"]
    
    func getAllTickets() -> [String] {
        availableTickets
    }
    func bookedTicket() -> String {
        let booked = availableTickets.first ?? ""
        availableTickets.removeFirst()
        return booked
    }
}
