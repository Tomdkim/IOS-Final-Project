//
//  ProfileViewController.swift
//  TestAcer
//
//  Created by Charles You on 2017-04-20.
//  Copyright © 2017 Tom DongHyun Kim. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {
    
    // Current User.
    let user = FIRAuth.auth()?.currentUser
    
    // Database reference.
    let dbRef = FIRDatabase.database().reference()
    
    // Key value of the node that represents the user.
    
    // Profile picture.
    @IBOutlet weak var profilePic: UIImageView!
    
    // Name.
    @IBOutlet weak var nameText: UILabel!
    
    // Email.
    @IBOutlet weak var emailText: UILabel!
    
    // School.
    @IBOutlet weak var schoolText: UILabel!
    
    // Courses.
    @IBOutlet weak var coursesText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let userInfo: [String:String] = getUserInfo()
        //        nameText.text = userInfo["Username"]
        //        emailText.text = userInfo["Email"]
        //        schoolText.text = userInfo["School"]
        //        coursesText.text = userInfo["Courses"]
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //        let userInfo: [String:String] = getUserInfo()
        //        nameText.text = userInfo["Username"]
        //        emailText.text = userInfo["Email"]
        //        schoolText.text = userInfo["School"]
        //        coursesText.text = userInfo["Courses"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Switches to updateProfile view controller.
    @IBAction func updateProfile(_ sender: UIButton) {
        performSegue(withIdentifier: "updateProfile", sender: self)
    }
    
    // Signing out
    @IBAction func signOut(_ sender: UIBarButtonItem) {
        do {
            try FIRAuth.auth()?.signOut()
            self.performSegue(withIdentifier: "logOut", sender: self)
        } catch {
            print("Error while signing out!")
        }
    }
    
    @IBAction func unwindToProfile(storyBoard: UIStoryboardSegue) {
    }
    
}
