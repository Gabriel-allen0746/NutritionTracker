//
//  firstPageViewController.swift
//  NutritionTracker
//
//  Created by Gabriel Allen on 8/8/16.
//  Copyright © 2016 Gabriel Allen. All rights reserved.
//

import UIKit

class firstPageViewController: UIViewController {

    
    @IBOutlet weak var currentDate: UILabel!
    
    @IBOutlet weak var waterTodayLabel: UILabel!
    
    @IBOutlet weak var calTodayLabel: UILabel!
    
    public var calTotal: Int = 0
    public var waterTotal: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        let convertedDate = dateFormatter.stringFromDate(NSDate())
        
        currentDate.text = String("\(convertedDate)")

        // Do any additional setup after loading the view.
        
        calTodayLabel.text = "\(calTotal)"
        waterTodayLabel.text = "\(waterTotal) ml"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addAction(sender: AnyObject) {
        
    }
    @IBAction func unwindToViewController (sender: UIStoryboardSegue){
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
