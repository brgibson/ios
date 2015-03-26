//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Ben Gibson on 3/25/15.
//  Copyright (c) 2015 Ben Gibson. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer();
    var hammer = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("01 - BobMarley-Hammer", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func stop(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    func setupHammer() {
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: hammer, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.enableRate = true
    }
    
    @IBAction func playSlow(sender: UIButton) {
        setupHammer()
        audioPlayer.rate = 0.7
        audioPlayer.play()
    }
    @IBAction func playFast(sender: UIButton) {
        setupHammer()
        audioPlayer.rate = 1.7
        audioPlayer.play()
    }
}
