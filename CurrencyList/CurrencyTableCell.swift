//
//  CurrencyTableCell.swift
//  CurrencyList
//
//  Created by ChangJoo Park on 2016. 3. 12..
//  Copyright © 2016년 ChangJoo Park. All rights reserved.
//

import UIKit

class CurrencyTableCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var currencyCode: UILabel!
    @IBOutlet weak var currencySymbol: UILabel!
    var currency: Currency! {
        didSet {
            name.text = NSLocale.currentLocale().displayNameForKey(NSLocaleCountryCode, value: currency.countryCode)
            flag.image = UIImage(named: currency.countryCode)
            currencyCode.text = "\(currency.currencyCode) \(currency.currencySymbol) "
        }
    }
    
}
