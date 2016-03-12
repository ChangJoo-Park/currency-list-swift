//
//  CurrencyModel.swift
//  CurrencyList
//
//  Created by ChangJoo Park on 2016. 3. 12..
//  Copyright © 2016년 ChangJoo Park. All rights reserved.
//

import Foundation

class Currency {
    var name: String = ""
    var countryCode: String = ""
    var currencySymbol: String = ""
    var currencyCode: String = ""
    
    init() {
        
    }
    
    init(name: String, countryCode: String, currencySymbol: String, currencyCode: String) {
        self.name = name
        self.countryCode = countryCode
        self.currencySymbol = currencySymbol
        self.currencyCode = currencyCode
    }
}