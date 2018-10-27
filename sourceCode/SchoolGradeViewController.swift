//
//  SchoolGradeViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 8/1/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit

class SchoolGradeViewController: UIViewController {

    @IBOutlet weak var targetGPA: UITextField!
    @IBOutlet weak var numOfExams: UITextField!
    @IBOutlet weak var pastExamsTotal: UITextField!
    @IBAction func calculateButton(_ sender: Any) {
        getScore()
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    func calculateGrade() -> Int {
        let pointsEarned = Int(pastExamsTotal.text!)
        let examsTotal = Int(numOfExams.text!)! + 1
        let goalGPA = Int(targetGPA.text!)
        let pointsNeeded = goalGPA! * examsTotal
        return pointsNeeded - pointsEarned!
    }
    
    func currentGrade() -> Int {
        let gradeNow = Int(pastExamsTotal.text!)!/Int(numOfExams.text!)!
        return gradeNow
    }
    
    func getScore() {
        let score = calculateGrade()
        let scoreNow = currentGrade()
        resultLabel.text = "You will have to earn \(score) on your next exam. Your current grade is \(scoreNow)."
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
