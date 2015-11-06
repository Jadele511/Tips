//
//  SettingsViewController.swift
//  Tips
//
//  Created by USER on 11/1/15.
//  Copyright © 2015 JadeLe. All rights reserved.
//


import UIKit
class SettingsViewController: UIViewController {
    
    
    
    @IBOutlet weak var pctLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func TipPercentageChanged(sender: AnyObject) {
        
        let tipPct = Double(tipSlider.value)
        pctLabel.text = "\(Int(tipPct))%"
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Double(tipPct), forKey: "default_tip_pct")
        defaults.synchronize()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipPct = defaults.doubleForKey("default_tip_pct")
        
        
        tipSlider.value = Float(tipPct)
        pctLabel.text = "\(Int(tipPct))%"
            }
    
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



