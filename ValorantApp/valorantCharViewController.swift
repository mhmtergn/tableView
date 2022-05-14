//
//  valorantCharViewController.swift
//  ValorantApp
//
//  Created by Mehmet Ergün on 12.05.2022.
//

import UIKit

class valorantCharViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
   
    
    
    var selectedChar : ValoCharacters?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = selectedChar?.image
        nameLabel.text = selectedChar?.name
        otherLabel.text = selectedChar?.type
        countryLabel.text = selectedChar?.country
        storyLabel.text = selectedChar?.story
        
        
    }
    


}
