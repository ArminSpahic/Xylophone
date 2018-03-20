//
//  ViewController.swift
//  Xylophone
//
//  Created by Armin Spahic on 05/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundToPlay: soundArray[sender.tag - 1])
      
        
    }
    
    func playSound(soundToPlay : String) {
        
        let soundUrl = Bundle.main.url(forResource: soundToPlay, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }

}

