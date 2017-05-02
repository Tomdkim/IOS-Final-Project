//
//  UpdateProfileViewController.swift
//  TestAcer
//
//  Created by Charles You on 2017-04-21.
//  Copyright © 2017 Tom DongHyun Kim. All rights reserved.
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
        let userInfo: [String:String] = getUserInfo()
        actualEmail.text = userInfo["Email"]
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
        updatingProf(n: nameText.text!, s: schoolText.text!, c: coursesText.text!)
        self.performSegue(withIdentifier: "toProfile", sender: self)
    }
    
    
}
