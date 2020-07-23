//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        //print(sender.currentTitle)
        
        let soundName = sender.currentTitle!
       // print(soundName)
        sender.alpha = 0.5
        print("Start \(soundName)")
        playSound(soundName)
        sleep(UInt32(0.2))
        sender.alpha = 1
        print("End")
        
    }
    
    func playSound(_ soundName: String)    {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}


