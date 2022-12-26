//
//  ViewController.swift
//  SimpsonBookApp
//
//  Created by Veysel Akbalık on 24.12.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpsons(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let bart = Simpsons(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        let maggie = Simpsons(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggie")!)
        let lisa = Simpsons(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        let marge = Simpsons(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "marge")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(maggie)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }


}

