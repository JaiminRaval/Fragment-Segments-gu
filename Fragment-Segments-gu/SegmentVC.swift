//
//  SegmentVC.swift
//  Fragment-Segments-gu
//
//  Created by Jaimin Raval on 21/08/25.
//

import UIKit

class SegmentVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var TableOne: UITableView!
    
    @IBOutlet weak var TableTwo: UITableView!
    
    @IBOutlet weak var tableTwoView: UIView!
    
    var superheroNames: [String] = [
        "Captain Thunder",
        "Shadow Blade",
        "Aqua Vortex",
        "Flame Phoenix",
        "Iron Sentinel",
        "Mystic Oracle",
        "Storm Rider",
        "Quantum Leap",
        "Neon Ghost",
        "Titan Forge",
        "Echo Mirage",
        "Frostbite",
        "Volt Surge",
        "Earth Shaker",
        "Lunar Eclipse",
        "Solar Flare",
        "Wind Whisper",
        "Cyber Hawk",
        "Venom Strike",
        "Crystal Guardian",
        "Blaze Runner",
        "Phantom Veil",
        "Gravity Master",
        "Radiant Star",
        "Thunderclap",
        "Ice Warden",
        "Shadow Weaver",
        "Plasma Bolt",
        "Rock Titan",
        "Aero Glide",
        "Bio Lumina",
        "Warp Speed",
        "Ember Knight",
        "Astral Voyager",
        "Pulse Wave",
        "Terra Form",
        "Nova Burst",
        "Specter Drift",
        "Bolt Fury",
        "Aqua Sentinel",
        "Flame Warden",
        "Steel Vortex",
        "Mystic Flame",
        "Storm Oracle",
        "Quantum Shadow",
        "Neon Phoenix",
        "Titan Surge",
        "Echo Frost",
        "Volt Phoenix",
        "Earth Mirage"
    ]

    var superPowers: [String] = [
        "Control lightning and thunder",
        "Manipulate shadows for stealth",
        "Command water and create whirlpools",
        "Generate and control fire",
        "Super strength and metal armor",
        "Predict future events",
        "Ride storms and control wind",
        "Teleport through dimensions",
        "Invisibility and energy bursts",
        "Forge weapons from any material",
        "Create illusions with sound",
        "Freeze objects and enemies",
        "Generate electricity",
        "Cause earthquakes",
        "Control moonlight for healing",
        "Harness solar energy",
        "Communicate with winds",
        "Hack technology with mind",
        "Poisonous strikes and agility",
        "Form crystal shields",
        "Run at supersonic speeds with fire",
        "Phase through objects",
        "Manipulate gravity fields",
        "Emit healing light",
        "Create sonic booms",
        "Form ice barriers",
        "Weave shadows into traps",
        "Shoot plasma projectiles",
        "Control rocks and earth",
        "Fly with aerodynamic precision",
        "Glow with bioluminescent energy",
        "Bend time for speed",
        "Wield flaming swords",
        "Travel through astral planes",
        "Emit electromagnetic pulses",
        "Reshape terrain",
        "Explode with stellar energy",
        "Drift as a ghostly entity",
        "Unleash furious lightning bolts",
        "Guard with water shields",
        "Wield eternal flames",
        "Create steel tornadoes",
        "Cast mystical fire spells",
        "Summon storm visions",
        "Shift quantum shadows",
        "Glow with neon rebirth",
        "Surge with titanic power",
        "Freeze echoes of sound",
        "Rise with electric flames",
        "Form illusory landscapes"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTwoView.isHidden = true
        TableOne.dataSource = self
        TableOne.delegate = self
        TableOne.register(
            UINib(
                nibName: "NameCell", bundle: nil),
            forCellReuseIdentifier: "NameCell")
        
        TableTwo.delegate = self
        TableTwo.dataSource = self
        TableTwo.register(
            UINib(
                nibName: "NameCell", bundle: nil),
            forCellReuseIdentifier: "NameCell")
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            TableOne.isHidden = false
            tableTwoView.isHidden = true
        }
        else if sender.selectedSegmentIndex == 1 {
            TableOne.isHidden = true
            tableTwoView.isHidden = false
        }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == TableOne {
            return superheroNames.count
        } else {
            return superPowers.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == TableOne {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") as! NameCell
            cell.superNameLbl.text = superheroNames[indexPath.row]
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") as! NameCell
            cell.superNameLbl.text = superPowers[indexPath.row]
            return cell
        }
        
    }
    


}
