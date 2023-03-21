//
//  PaymentConfig.swift
//  AILRoussetBasket
//
//  Created by bastien giat on 16/03/2023.
//

import Foundation

class PaymentConfig {
    var paymentIntentClientSecret: String?
    static var shared: PaymentConfig = PaymentConfig()
    
    private init() {
        
    }
}
