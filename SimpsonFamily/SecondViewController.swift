//
//  SecondViewController.swift
//  deneme3
//
//  Created by Burak Afyonlu on 16.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    var selectedSimpson : Simpson?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        imageView.image = selectedSimpson?.image
        jobLabel.text = selectedSimpson?.job
        
    }
    

    

}
