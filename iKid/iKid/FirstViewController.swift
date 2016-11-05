//
//  FirstViewController.swift
//  iKid
//
//  Created by Matt Bond on 10/31/16.
//  Copyright © 2016 Matt Bond. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var goodView: UIView!
    @IBOutlet weak var jokeText: UILabel!
    var count: Int = 0
    var joke: [String] = ["Fred, do you think I'm a bad mother?", "Mom, my name is James"];

    override func viewDidLoad() {
        super.viewDidLoad()
        self.jokeText.text = joke[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Punchline(_ sender: Any) {
        count += 1
        if count % 2 == 0 {
            UIView.transition(with: goodView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            self.jokeText.text =  self.joke[self.count % self.joke.count]
            })
        } else {
            UIView.transition(with: goodView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: {(_ : Bool) -> Void in
                self.jokeText.text =  self.joke[self.count % self.joke.count]
            })
        }
    }
}

