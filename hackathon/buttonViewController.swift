//
//  buttonViewController.swift
//  hackathon
//
//  Created by Tony Che on 4/10/21.
//

import UIKit

class buttonViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    @IBOutlet weak var labelOne: UILabel!
    
    var seconds = 15
    var timer = Timer()
    
    //function which makes the imer begin
    func runTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(buttonViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateTimer(){
        
        
        seconds -= 1
        label.text = "\(seconds)"
        
        //Once seconds(the timer) hits 0 the timer is stoped by timer.invalidate then help is called
        if seconds == 0 {
            timer.invalidate()
            print("call for help")
            label.text = "HELP IS ON THE WAY!!!"
            
        }
    }
    
    @IBAction func button(_ sender: Any) {
        
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(normalTap))
        button.addGestureRecognizer(tapGesture)

        let longGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longTap))
        button.addGestureRecognizer(longGesture)
    }
    

    @objc func normalTap(_ sender: UIGestureRecognizer){
        print("Normal tap")
    }
    
    @objc func longTap(_ sender: UIGestureRecognizer){
        print("Long tap")
        if sender.state == .ended {
            
            runTimer()
            updateTimer()
            
            print("CONTACTS NOTIFIED!!!!")
            labelOne.text = "EMERGENCY CONTACTS NOTIFIED!!!!"
            
            print("UIGestureRecognizerStateEnded")
            //Do Whatever You want on End of Gesture
        }
        else if sender.state == .began {
            print("UIGestureRecognizerStateBegan.")
            //Do Whatever You want on Began of Gesture
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(normalTap))
//        button.addGestureRecognizer(tapGesture)
//
//        let longGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longTap))
//        button.addGestureRecognizer(longGesture)
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(normalTap))
//        self.button.addGestureRecognizer(tapGesture)
//
//        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longTap))
//        self.button.addGestureRecognizer(longGesture)
        

       
        }

        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


