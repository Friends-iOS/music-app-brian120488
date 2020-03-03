//
//  ViewController.swift
//  musicApp
//
//  Created by Adam Jackrel on 2/28/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(name : String) {
        let sound = Bundle.main.path(forResource: name, ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

    @IBAction func playC(_ sender: Any) {
        playSound(name : "c-4")
    }
    
    @IBAction func playD(_ sender: Any) {
        playSound(name : "d-4")
    }
    
    @IBAction func playE(_ sender: Any) {
        playSound(name : "e4")
    }
    
    @IBAction func playF(_ sender: Any) {
        playSound(name : "f-4")
    }
    
    @IBAction func playG(_ sender: Any) {
        playSound(name : "g-4")
    }
    
    @IBAction func playA(_ sender: Any) {
        playSound(name : "a-4")
    }
    
    @IBAction func playB(_ sender: Any) {
        playSound(name : "b4")
    }
}

