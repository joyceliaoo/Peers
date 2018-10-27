//
//  TimerViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 8/1/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButton(_ sender: Any) {
        if isTimerRunning == false {
            runTimer()
            pauseButton.isEnabled = true
            self.startButton.isEnabled = false
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
            self.pauseButton.setTitle("Resume", for: .normal)
        } else {
            runTimer()
            self.resumeTapped = false
            self.pauseButton.setTitle("Pause", for: .normal)
        }
    
    }
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        seconds = 1800
        timerLabel.text = timeString(time: TimeInterval(seconds))
        isTimerRunning = false
        self.pauseButton.setTitle("Pause", for: .normal)
        pauseButton.isEnabled = false
        self.resumeTapped = false
        self.startButton.isEnabled = true
    }
    
var resumeTapped = false
    
    func ringSound() {
        // create a sound ID, in this case its the tweet sound.
        let systemSoundID: SystemSoundID = 1005
        
        // to play sound
        AudioServicesPlaySystemSound (systemSoundID)

    }

override func viewDidLoad() {
    super.viewDidLoad()
    pauseButton.isEnabled = false
    // Do any additional setup after loading the view, typically from a nib.
}

    
    var seconds = 1800
    var timer = Timer()
    var isTimerRunning = false

@objc func updateTimer() {
    if seconds < 1 {
        timer.invalidate()
        ringSound()
    } else {
        seconds -= 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
    }
}

func runTimer() {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
    isTimerRunning = true
    pauseButton.isEnabled = true
}

func timeString(time:TimeInterval) -> String {
    let hours = Int(time) / 3600
    let minutes = Int(time) / 60 % 60
    let seconds = Int(time) % 60
    return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
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
