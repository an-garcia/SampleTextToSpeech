//
//  ViewController.swift
//  SampleTextToSpeech
//
//  Created by xengar on 2017-12-23.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = "In the beginning there was darkeness."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Speak action
    @IBAction func spek(_ sender: Any) {
        // https://www.hackingwithswift.com/example-code/media/how-to-convert-text-to-speech-using-avspeechsynthesizer-avspeechutterance-and-avspeechsynthesisvoice
        
        // You can omit the rate property entirely to have a natural-speed voice, or change the language to "en-GB",  "en-US" (English, American accent), "en-IE" (English, Irish accent), "en-AU" (English, Australian accent) or whichever other accents Apple chooses to add in the future.
        // Available from iOS 7.0
        let text : String = label.text!
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        //utterance.rate = 0.1
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

