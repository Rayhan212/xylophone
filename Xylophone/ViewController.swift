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
    var player: AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSound(_ sender: Any) {
        playSound(Sound: (sender as AnyObject).currentTitle!)
    }
    
    func playSound(Sound: String) {
        let url = Bundle.main.url(forResource: Sound, withExtension: "wav" )
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

