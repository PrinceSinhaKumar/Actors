//
//  TicketSystemViewModel.swift
//  Actors in swift
//
//  Created by  Prince Shrivastav on 25/08/24.
//

import Foundation

class BankAccountViewModel {
    private var accountBalance = 500
    
    let barrierQueue = DispatchQueue(label: "com.queue.barrier", attributes: .concurrent)
    
    func debetMoneyFromAccount(amount: Int) {
        barrierQueue.sync(flags: .barrier) {
            if accountBalance > amount {
                accountBalance -= amount
                print("\(amount) is debeted from your account now balance is \(accountBalance)")
            } else {
                print("!!Insufficient balance!! remaining balance\(accountBalance), trying to debet \(amount)")
            }
        }
        
    }
}
