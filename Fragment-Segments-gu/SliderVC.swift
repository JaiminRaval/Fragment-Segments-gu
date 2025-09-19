//
//  SliderVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 25/08/25.
//

import UIKit

class SliderVC: UIViewController {

    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var rVal: UISlider!
    @IBOutlet weak var gVal: UISlider!
    @IBOutlet weak var bVal: UISlider!
    @IBOutlet weak var aVal: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func changeColor(r: CGFloat, g: CGFloat, b: CGFloat, op: CGFloat) {
        ColorView.backgroundColor =
        UIColor(
            red: r,
            green: g,
            blue: b,
            alpha: op)
    }
    
    @IBAction func RSlider(_ sender: UISlider) {
//        var r = CGFloat(rVal.value)
//        var g = CGFloat(gVal.value)
//        var b = CGFloat(bVal.value)
//        var op = CGFloat(aVal.value)
//        changeColor(r: r, g: g, b: b, op: op)
        
        ColorView.backgroundColor =
        UIColor(
            red: CGFloat(rVal.value),
            green: CGFloat(gVal.value) ,
            blue: CGFloat(bVal.value),
            alpha: CGFloat(aVal.value))
    }
    @IBAction func GSlider(_ sender: UISlider) {
//        var r = CGFloat(rVal.value)
//        var g = CGFloat(gVal.value)
//        var b = CGFloat(bVal.value)
//        var op = CGFloat(aVal.value)
//        changeColor(r: r, g: g, b: b, op: op)
        ColorView.backgroundColor =
        UIColor(
            red: CGFloat(rVal.value),
            green: CGFloat(gVal.value) ,
            blue: CGFloat(bVal.value),
            alpha: CGFloat(aVal.value))
    }
    @IBAction func BSlider(_ sender: UISlider) {
//        var r = CGFloat(rVal.value)
//        var g = CGFloat(gVal.value)
//        var b = CGFloat(bVal.value)
//        var op = CGFloat(aVal.value)
//        changeColor(r: r, g: g, b: b, op: op)
        ColorView.backgroundColor =
        UIColor(
            red: CGFloat(rVal.value),
            green: CGFloat(gVal.value) ,
            blue: CGFloat(bVal.value),
            alpha: CGFloat(aVal.value))
    }
    @IBAction func ASlider(_ sender: UISlider) {
//        var r = CGFloat(rVal.value)
//        var g = CGFloat(gVal.value)
//        var b = CGFloat(bVal.value)
//        var op = CGFloat(aVal.value)
//        changeColor(r: r, g: g, b: b, op: op)
        ColorView.backgroundColor =
        UIColor(
            red: CGFloat(rVal.value),
            green: CGFloat(gVal.value) ,
            blue: CGFloat(bVal.value),
            alpha: CGFloat(aVal.value))
    }


}
