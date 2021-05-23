//
//  ViewController.swift
//  FNiOSChlg
//
//  Created by Jessica Watts on 5/23/21.
//

import UIKit

class ViewController: UIViewController {

    var items = [FeedItem]()
    
    let mc = MockClient()

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        items = mc.getFeed()
        tableview.reloadData()
        
    }

    @IBAction func RefreshListView() {
        
        items = mc.getFeed()
        tableview.reloadData()
    }
    
}

