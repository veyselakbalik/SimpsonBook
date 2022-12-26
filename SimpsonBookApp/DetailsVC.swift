//
//  DetailsVC.swift
//  SimpsonBookApp
//
//  Created by Veysel Akbalık on 26.12.2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstLabel.text = selectedSimpson?.name
        secondLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }
    

    

}
