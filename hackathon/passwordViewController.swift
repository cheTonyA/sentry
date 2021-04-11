//
//  passwordViewController.swift
//  hackathon
//
//  Created by Tony Che on 4/10/21.
//

import UIKit

class passwordViewController: UIViewController {
    

    @IBOutlet weak var incorrectPassword: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func enterButtonfunc(_ sender: Any) {
        
        let password = passwordField.text!
        //let passwordOne = "password"
       // let isEqual = (password == passwordOne)
        
        
            if password != "yes" {
                
                print("incorrect password")
                incorrectPassword.text = "Wrong Password"
                print("Error")

                } else {
                    print("correct password")
                    self.performSegue(withIdentifier: "segueToOrigin", sender: nil)
                    
                }
            
        }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
