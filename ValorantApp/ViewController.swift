//
//  ViewController.swift
//  ValorantApp
//
//  Created by Mehmet Ergün on 12.05.2022.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var tableView: UITableView!
    
    var valoChars = [ValoCharacters]()
    
    var chosenChar : ValoCharacters?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.delegate = self
        tableView.dataSource = self
        
        // Valorant Char Object
        
        let astra = ValoCharacters(charName: "Astra", charType: "Sorcerer", charStory: "Sonra", charCountry: "Mexico",charImage: UIImage(named: "astra")!)
        let breach = ValoCharacters(charName: "Breach", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "breach")!)
        let brimstone = ValoCharacters(charName: "Brimstone", charType: "Warrior", charStory: "Sonra", charCountry: "Germany",charImage: UIImage(named: "brimstone")!)
        let chamber = ValoCharacters(charName: "Chamber", charType: "Magician", charStory: "Sonra", charCountry: "England",charImage: UIImage(named: "chamber")!)
        let cypher = ValoCharacters(charName: "Cypher", charType: "??", charStory: "??", charCountry: "Earth",charImage: UIImage(named: "cypher")!)
        let killjoy = ValoCharacters(charName: "Killjoy", charType: "Mekanic", charStory: "Sonra", charCountry: "Germany",charImage: UIImage(named: "killjoy")!)
        let neon = ValoCharacters(charName: "Neon", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "neon")!)
        let omen = ValoCharacters(charName: "Omen", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "omen")!)
        let pheonix = ValoCharacters(charName: "Pheonix", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "pheonix")!)
        let raze = ValoCharacters(charName: "Raze", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "raze")!)
        let reyna = ValoCharacters(charName: "Reyna", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "reyna")!)
        let sage = ValoCharacters(charName: "Sage", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "sage")!)
        let skye = ValoCharacters(charName: "Skye", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "skye")!)
        let viper = ValoCharacters(charName: "Viper", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "viper")!)
        let yoru = ValoCharacters(charName: "Yoru", charType: "Assasian", charStory: "Sonra", charCountry: "Norway",charImage: UIImage(named: "yoru")!)

        valoChars.append(astra)
        valoChars.append(breach)
        valoChars.append(brimstone)
        valoChars.append(chamber)
        valoChars.append(cypher)
        valoChars.append(killjoy)
        valoChars.append(neon)
        valoChars.append(omen)
        valoChars.append(pheonix)
        valoChars.append(raze)
        valoChars.append(reyna)
        valoChars.append(sage)
        valoChars.append(skye)
        valoChars.append(viper)
        valoChars.append(yoru)
        
        navigationItem.title = "Valorant Characters"
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valoChars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = valoChars[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenChar = valoChars[indexPath.row]
        self.performSegue(withIdentifier: "toValoChar", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toValoChar" {
            let destinationVc = segue.destination as! valorantCharViewController
            destinationVc.selectedChar = chosenChar
        }
    }
    

}



