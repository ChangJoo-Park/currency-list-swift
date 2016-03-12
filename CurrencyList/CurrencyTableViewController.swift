//
//  CurrencyTableViewController.swift
//  CurrencyList
//
//  Created by ChangJoo Park on 2016. 3. 12..
//  Copyright © 2016년 ChangJoo Park. All rights reserved.
//

import UIKit

class CurrencyTableViewController: UITableViewController {
    var selectIndex: Int = -1
    var tableData: NSMutableArray = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("currency", ofType: "plist") as String!
        self.tableData = NSMutableArray(contentsOfFile: path) as NSMutableArray!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: CurrencyTableCell = self.tableView.dequeueReusableCellWithIdentifier("CurrencyItemCell") as! CurrencyTableCell
        let data = self.tableData[indexPath.row]
        let name: String = data["name"] as! String
        let countryCode: String = data["countryCode"] as! String
        let currencyCode: String = data["currencyCode"] as! String
        let currencySymbol: String = data["currencytSymbol"] as! String
        cell.currency = Currency(name: name, countryCode: countryCode, currencySymbol: currencySymbol, currencyCode: currencyCode)
        return cell
    }
}
