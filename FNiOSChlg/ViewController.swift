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
    
    
    @IBAction func RefreshListView(_ sender: Any) {
        
        items = mc.getFeed()
        tableview.reloadData()
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :UITableViewCell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].headline
        
        switch items[indexPath.row].style {
        case .bigTop:
            cell.backgroundColor = .red
        case .river:
            cell.backgroundColor = .blue
        case .ad:
            cell.backgroundColor = .green
        case .houseAd:
            cell.backgroundColor = .orange
        case .slideshow:
            cell.backgroundColor = .purple
        default:
            break
        }
        
        
        
        return cell
    }
    
    
}

