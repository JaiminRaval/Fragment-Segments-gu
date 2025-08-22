//
//  SegmentVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 21/08/25.
//

import UIKit

class SegmentVC: UIViewController {

    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTwo.isHidden = true
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            viewOne.isHidden = false
            viewTwo.isHidden = true
        }
        else if sender.selectedSegmentIndex == 1 {
            viewOne.isHidden = true
            viewTwo.isHidden = false
        }
        
        
    }


}
