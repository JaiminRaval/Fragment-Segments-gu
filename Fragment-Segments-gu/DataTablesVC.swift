//
//  DataTablesVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 15/09/25.
//

import UIKit

class DataTablesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arr = ["Apple", "John", "Logan", "Ben"]
    
    @IBOutlet weak var DataTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataTable.dataSource = self
        DataTable.delegate = self
        DataTable.register(UINib(nibName: "DatasCell", bundle: nil), forCellReuseIdentifier: "DatasCell")

        // Do any additional setup after loading the view.
    }
    

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DatasCell") as! DatasCell
        
        cell.nameLbl.text = "\(arr[indexPath.row])"
        return cell
    }

}
