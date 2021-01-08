//
//  SingleReceipt.swift
//  Dots
//
//  Created by Jack Zhao on 1/8/21.
//

import Foundation

struct ReceiptInformation {
    var title: String
    var amount: Double
    var date: String
    init(inputTitle: String = "Untitled", inputAmount: Double = 0.0, inputDate: String = "Date not specified") {
        title = inputTitle
        amount = inputAmount
        date = inputDate
    }
}

 //MARK: Class Start
 // This class stores all the information needed to complete a "Bill"
class SimpleReceipt: ObservableObject {
    //TODO: Finish initializer
    @Published var displayInfo: ReceiptInformation
    init() {
        displayInfo = ReceiptInformation()
    }
    
    
}
