//
//  InputViewController1.swift
//  Peers!
//
//  Created by Anjali Mangla on 7/31/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit
import CoreData

class InputViewController1: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var selectionNumber = 0

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBAction func addButton(_ sender: Any) {
        if (inputField.text != "") {
            var selectedValue = classes[pickerView.selectedRow(inComponent: 0)]
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context)
            newTask.taskName = selectedValue + ": " + (inputField?.text)!
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            //print (newTask.taskName)
         
        }
        inputField.text = ""
        inputField.resignFirstResponder()
    }
    
    let classes = ["History", "Math", "Science", "English", "Social Studies", "Computers", "Psychology", "Art", "Elective", "Other"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    /*
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }
 */
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print ("This is the selection number: \(selectionNumber)")
        selectionNumber = row
        return classes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classes.count
    }
    
    
    
    /*
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        // selected value in Uipickerview in Swift
        let subject = classes[row] as String
        print ("picker switched")
        //println("values:----------\(value)");
        
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
 
