//
//  secondPageViewController.swift
//  NutritionTracker
//
//  Created by Gabriel Allen on 8/9/16.
//  Copyright © 2016 Gabriel Allen. All rights reserved.
//

import UIKit

class secondPageViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var searchBar: UISearchBar!

    @IBOutlet weak var waterAmountTextField: UITextField!
    @IBOutlet weak var waterPicker: UIPickerView!
    
    @IBOutlet weak var foodPicker: UIPickerView!
    @IBOutlet weak var foodAmountTextField: UITextField!
    @IBOutlet weak var foodCalLabel: UILabel!
    
    @IBAction func drinkButton(sender: AnyObject) {
    }
    @IBAction func eatButton(sender: AnyObject) {
    }
    
    var calories: Int = 0
    
    
    
    var foodPickerData: [String] = [String]()
    var waterPickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.foodPicker.delegate = self
        self.foodPicker.dataSource = self
        
        self.waterPicker.delegate = self
        self.waterPicker.dataSource = self
        
        foodPickerData = ["Servings", "Grams", "Ounces", "Cups"]
        
        waterPickerData = ["Millilitires","Ounces", "Cups"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == foodPicker {
            return foodPickerData.count
        }
        else if pickerView == waterPicker {
            return waterPickerData.count
        }
        return 0
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == foodPicker {
            return foodPickerData[row]
        }
        else if pickerView == waterPicker {
            return waterPickerData[row]
        }
        return ""
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
