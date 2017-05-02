//
//  Post.swift
//  TestAcer
//
//  Created by Tom Kim on 5/2/17.
//  Copyright © 2017 Tom DongHyun Kim. All rights reserved.
//

import Foundation
import UIKit
import FirebaseStorage
import FirebaseAuth
import FirebaseDatabase

let currentUser = FIRAuth.auth()?.currentUser

let id = currentUser?.uid

let dbRef = FIRDatabase.database().reference()

// Used in Sign Up when a user first enters his/her information.
func setUser(school: String, classes: String) {
    var dict: [String : String] = [:]
    dict["Username"] = currentUser?.displayName
    dict["Email"] = currentUser?.email
    dict["School"] = school
    dict["Courses"] = classes
    let userReference = dbRef.child("Users").child(id!)
    userReference.setValue(dict)
}


// Used to get info of the user when loading the profile page.
func getUserInfo() -> [String:String] {
    let userReference = dbRef.child("Users")
    return userReference.value(forKey: id!) as! [String : String]
}

func updatingProf(n: String, s: String, c: String) {
    let userReference = dbRef.child("Users").child(id!)
    userReference.child("Username").setValue(n)
    userReference.child("School").setValue(s)
    userReference.child("Courses").setValue(c)
}
