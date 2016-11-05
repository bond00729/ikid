//
//  ThirdViewController.swift
//  iKid
//
//  Created by Matt Bond on 11/4/16.
//  Copyright © 2016 Matt Bond. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet var dadView: UIView!
    @IBOutlet weak var jokeText: UILabel!
    var count: Int = 0
    var joke: [String] = ["How many apples grow on trees?", "All of them."];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jokeText.text = joke[0]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Punchline(_ sender: Any) {
        count += 1
        if count % 2 == 0 {
            UIView.transition(with: dadView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
                self.jokeText.text =  self.joke[self.count % self.joke.count]
            })
        } else {
            UIView.transition(with: dadView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: {(_ : Bool) -> Void in
                self.jokeText.text =  self.joke[self.count % self.joke.count]
                })
        }
    }
}
