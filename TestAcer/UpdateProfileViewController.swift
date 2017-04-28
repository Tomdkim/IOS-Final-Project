//
//  UpdateProfileViewController.swift
//  TestAcer
//
//  Created by Charles You on 2017-04-21.
//  Copyright © 2017 Charles You. All rights reserved.
//

import UIKit
import Firebase

class UpdateProfileViewController: UIViewController {
    
    // Profile picture.
    @IBOutlet weak var profilePic: UIImageView!
    
    // Name.
    @IBOutlet weak var nameText: UITextField!
    
    // Email.
    @IBOutlet weak var actualEmail: UILabel!
    
    // School.
    @IBOutlet weak var schoolText: UITextField!
    
    // Courses.
    @IBOutlet weak var coursesText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Updates the image.
    @IBAction func updateImage(_ sender: UIButton) {
    }
    
    // Updates the profile.
    @IBAction func updateProfile(_ sender: UIButton) {
    }
    
    // Sign Out
    @IBAction func signOut(_ sender: UIBarButtonItem) {
        do {
            try FIRAuth.auth()?.signOut()
            self.performSegue(withIdentifier: "logOut", sender: self)
        } catch {
            print("Error while signing out!")
        }
    }
    
    
}
