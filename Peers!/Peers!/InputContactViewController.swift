//
//  InputContactViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 8/2/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit
import CoreData
class InputContactViewController: UIViewController {
    
    @IBOutlet weak var inputContact: UITextField!
    
    
    @IBAction func addContact(_ sender: Any) {
    if (inputContact.text != "") {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newContact = Contact(context: context)
            newContact.contactName = inputContact?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        inputContact.text = ""
        inputContact.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


