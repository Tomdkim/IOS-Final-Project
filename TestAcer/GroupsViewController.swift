//
//  GroupsViewController.swift
//  TestAcer
//
//  Created by Charles You on 2017-04-21.
//  Copyright © 2017 Tom DongHyun Kim. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cell: GroupsTableViewCell?
    
    enum Constants {
        static let buttonBackgroundColor = UIColor.black
        static let buttonSize = 200 // random value, must change later
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var groupsTableView: UITableView!
    
    //    var descriptionViewButton: UIButton = {
    //        var button = UIButton(frame: Constants.buttonSize)
    //        button.backgroundColor = Constants.buttonBackgroundColor
    //        button.isHidden = true
    //        return button
    //    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return (pokemonArray?.count)!
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        cell = tableView.dequeueReusableCell(withIdentifier: "tableID", for: indexPath) as? TableViewCell
        //        pokemon = pokemonArray?[indexPath.row]
        //
        //        cell?.pokeName.text = pokemon!.name!
        //        cell?.pokeNum.text = String(describing: pokemon!.number!)
        //        cell?.pokeStat.text = "\(pokemon!.attack!)/\(pokemon!.defense!)/\(pokemon!.health!)"
        //
        //        if let image = cachedImages[indexPath.row] {
        //            cell?.pokeImage.image = image
        //        } else {
        //            let url = URL(string: (pokemon?.imageUrl)!)!
        //            let session = URLSession(configuration: .default)
        //            let downloadPicTask = session.dataTask(with: url) { (data, response, error) in
        //                if let e = error {
        //                    print("Error downloading picture: \(e)")
        //                } else {
        //                    if let _ = response as? HTTPURLResponse {
        //                        if let imageData = data {
        //                            let image = UIImage(data: imageData)
        //                            self.cachedImages[indexPath.row] = image
        //                            self.cell?.pokeImage.image = UIImage(data: imageData) // may need to change this!
        //                        } else {
        //                            print("Couldn't get image: Image is nil")
        //                        }
        //                    } else {
        //                        print("Couldn't get response code")
        //                    }
        //                }
        //            }
        //            downloadPicTask.resume()
        //        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        selectedIndexPath = indexPath
        //        performSegue(withIdentifier: "secondLink", sender: selectedIndexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        if let identifier = segue.identifier {
        //            if identifier == "secondLink" {
        //                if let dest = segue.destination as? PokemonInfoViewController {
        //                    //                    dest.pokemon = pokemon!
        //                    dest.pokemon = pokemonArray?[(selectedIndexPath?.item)!]
        //                    if let image = cachedImages[(selectedIndexPath?.item)!] {
        //                        cell?.pokeImage.image = image
        //                    }
        //                }
        //            }
        //        }
    }
    
}
