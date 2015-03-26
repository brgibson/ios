//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Ben Gibson on 3/11/15.
//  Copyright (c) 2015 Ben Gibson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Record the users voice
        println("recording voice")
        recordButton.enabled = false
        recordingInProgress.hidden = false
        stopRecordingButton.hidden = false
    }
    
    @IBAction func stopRecording(sender: UIButton) {
        recordButton.enabled = true
        recordingInProgress.hidden = true
        stopRecordingButton.hidden = true
    }
}

