//
//  ViewController.swift
//  StopWs5ch
//
//  Created by D7703_11 on 2019. 4. 2..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLable: UILabel!
    var count = 0;
    var mytimer = Timer()
    var timer_running = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLable.text=String(count)
        self.title = "스톱 워치"
    }

    @IBAction func playbtnPressed(_ sender: Any) {
        //scheduledTimer 호출
        if !mytimer.isValid{
        mytimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }else{
            timer_running = true
        }
        
    }
    
    @IBAction func pausebtnPressed(_ sender: Any) {
        mytimer.invalidate()
    }
    
    @IBAction func stopbtnPressed(_ sender: Any) {
        mytimer.invalidate()
        count = 0
        timeLable.text = String(count)
    }
    @objc func updateTime(){
        count += 1
        timeLable.text = String(count)
    }
    
}

