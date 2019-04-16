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
        if !timer_running{
            mytimer = Timer.init(timeInterval:1, repeats: true, block:{
                (timer:Timer) -> Void in
                    self.count += 1
                    self.timeLable.text = String(self.count)
            }
        )
       
        timer_running = true
            
       //     Timer.init(TimeInterval:1, repeats:true, block:(timer:Timer-> void) in//
        //        counter += 1
       //     timeLabel.text = String(Counte))
      //  }else{
       //     timer_running = true
        //}
        
        }
    
//    @objc func updateTime(){
//        count += 1
//        timeLable.text = String(count)
//    }
    
    }
    @IBAction func pausebtnPressed(_ sender: Any) {
        mytimer.invalidate()
    }
    
    @IBAction func stopbtnpressed(_ sender: Any) {
        mytimer.invalidate()
        count = 0
        timeLable.text = String(count)
    }
}
