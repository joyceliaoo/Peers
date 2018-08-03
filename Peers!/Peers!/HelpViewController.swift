//
//  HelpViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 8/2/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    @IBAction func stressManagementLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.heart.org/en/healthy-living/healthy-lifestyle/stress-management")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func timeManagementLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.sd43.bc.ca/school/gleneagle/Parents/LearningLab/Writing%20Your%20Way%20to%20Success/Time%20Management/Time%20Management%20for%20High%20School%20Students.pdf")! as URL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
