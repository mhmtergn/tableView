//
//  CharModel.swift
//  ValorantApp
//
//  Created by Mehmet Ergün on 15.05.2022.
//

import Foundation
import UIKit

class ValoCharacters {
    var name:String
    var type:String
    var story:String
    var country:String
    var image : UIImage
    
    
    init(charName:String, charType:String, charStory:String, charCountry:String, charImage:UIImage) {
        name = charName
        type = charType
        story = charStory
        country = charCountry
        image = charImage
     
        
    }
}
