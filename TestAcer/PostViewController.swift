//
//  PostViewController.swift
//  TestAcer
//
//  Created by Charles You on 2017-04-21.
//  Copyright © 2017 Charles You. All rights reserved.
//

import UIKit
import GooglePlaces
import GooglePlacePicker

class PostViewController: UIViewController {

    var placesClient: GMSPlacesClient!
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var selectPlaceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placesClient = GMSPlacesClient.shared()
    }
    
    //    // Add a UIButton in Interface Builder, and connect the action to this function.
    //    @IBAction func getCurrentPlace(_ sender: UIButton) {
    //
    //        placesClient.currentPlace(callback: { (placeLikelihoodList, error) -> Void in
    //            if let error = error {
    //                print("Pick Place error: \(error.localizedDescription)")
    //                return
    //            }
    //
    //            self.nameLabel.text = "No current place"
    //            self.addressLabel.text = ""
    //
    //            if let placeLikelihoodList = placeLikelihoodList {
    //                let place = placeLikelihoodList.likelihoods.first?.place
    //                if let place = place {
    //                    self.nameLabel.text = place.name
    //                    self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ")
    //                        .joined(separator: "\n")
    //                }
    //            }
    //        })
    //    }
    
    @IBAction func pickPlace(_ selectPlaceButton: UIButton) {
        let center = CLLocationCoordinate2D(latitude: 37.788204, longitude: -122.411937)
        let northEast = CLLocationCoordinate2D(latitude: center.latitude + 0.001, longitude: center.longitude + 0.001)
        let southWest = CLLocationCoordinate2D(latitude: center.latitude - 0.001, longitude: center.longitude - 0.001)
        let viewport = GMSCoordinateBounds(coordinate: northEast, coordinate: southWest)
        let config = GMSPlacePickerConfig(viewport: viewport)
        let placePicker = GMSPlacePicker(config: config)
        
        placePicker.pickPlace(callback: {(place, error) -> Void in
            if let error = error {
                print("Pick Place error: \(error.localizedDescription)")
                return
            }
            
            if let place = place {
                self.nameLabel.text = place.name
                self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ")
                    .joined(separator: "\n")
            } else {
                self.nameLabel.text = "No place selected"
                self.addressLabel.text = ""
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
