//
//  RandomQuoteViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 8/2/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit

class RandomQuoteViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    var quotes: [String] = ["Nothing is impossible, the word itself says “I’m possible”! —Audrey Hepburn",
                            "I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel. —Maya Angelou",
                            "Whether you think you can or you think you can’t, you’re right. —Henry Ford",
                            "Perfection is not attainable, but if we chase perfection we can catch excellence. —Vince Lombardi",
                            "Life is 10% what happens to me and 90% of how I react to it. —Charles Swindoll",
                            "If you look at what you have in life, you’ll always have more. If you look at what you don’t have in life, you’ll never have enough. —Oprah Winfrey",
                            "Remember no one can make you feel inferior without your consent. —Eleanor Roosevelt",
                            "I can’t change the direction of the wind, but I can adjust my sails to always reach my destination. —Jimmy Dean",
                            "Believe you can and you’re halfway there. —Theodore Roosevelt",
                            "To handle yourself, use your head; to handle others, use your heart. —Eleanor Roosevelt",
                            "Too many of us are not living our dreams because we are living our fears. —Les Brown",
                            "Do or do not. There is no try. —Yoda",
                            "Whatever the mind of man can conceive and believe, it can achieve. —Napoleon Hill",
                            "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails. Explore, Dream, Discover. —Mark Twain",
                            "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed. —Michael Jordan",
                            "Strive not to be a success, but rather to be of value. —Albert Einstein",
                            "I am not a product of my circumstances. I am a product of my decisions. —Stephen Covey",
                            "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it. —Henry Ford",
                            "The most common way people give up their power is by thinking they don’t have any. —Alice Walker",
                            "The most difficult thing is the decision to act, the rest is merely tenacity. —Amelia Earhart"]
    
    func getQuote() {
        let quoteIndex = Int(arc4random_uniform(_:UInt32(quotes.count)))
        let targetQuote = quotes[quoteIndex]
        quoteLabel.text = targetQuote
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getQuote()
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
