//
//  TwoTableVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 21/08/25.
//

import UIKit

class TwoTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var dataArr1 = ["cat", "dog", "Fish"]
    var dataArr2 = ["eagle", "pegion", "sparrow", "owl", "parrot"]
    
    @IBOutlet weak var tableTwoView: UIView!
    
    @IBOutlet weak var tableOne: UITableView!
    
    @IBOutlet weak var tableTwo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableOne.dataSource = self
        tableOne.delegate = self
        tableTwo.dataSource = self
        tableTwo.delegate = self
        
        tableTwoView.isHidden = true
        tableTwo.isHidden = true
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            tableOne.isHidden = false
            tableTwoView.isHidden = true
            tableTwo.isHidden = true
        } else if sender.selectedSegmentIndex == 1 {
            tableTwoView.isHidden = false
            tableTwo.isHidden = false
            tableOne.isHidden = true
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var cnt: Int = 0
        
        if tableView == tableOne {
            cnt = dataArr1.count
            
        } else if tableView == tableTwo {
            cnt = dataArr2.count
            
        }
        
        return cnt
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! UITableViewCell
        
        if tableView == tableOne {
            cell.textLabel?.text = "\(dataArr1[indexPath.row])"
            
        } else if tableView == tableTwo {
            cell.textLabel?.text = "\(dataArr2[indexPath.row])"
        }
        
        return cell
    }
    

}
