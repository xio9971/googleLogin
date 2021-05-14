//
//  ViewController.swift
//  googleLogin
//
//  Created by 민트팟 on 2021/05/12.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {


    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        // Do any additional setup after loading the view.
    }

    @IBAction func googleSignIn(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
    
    @IBAction func googleLogOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        
        idLabel.text = ""
        emailLabel.text = ""
        nameLabel.text = ""
    }
    
    @IBAction func printTest(_ sender: Any) {
        
        let user = AppDelegate.user
        
        idLabel.text = user?.userID
        emailLabel.text = user?.profile.email
        nameLabel.text = user?.profile.name
    }

}

