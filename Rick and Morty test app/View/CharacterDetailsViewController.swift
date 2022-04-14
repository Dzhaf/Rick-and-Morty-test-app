//
//  CharacterDetailsViewController.swift
//  Rick and Morty test app
//
//  Created by Jafar on 14.04.2022.
//

import UIKit
import Kingfisher

class CharacterDetailsViewController: UIViewController {
    
    var chosenCharacter : Results!

    @IBOutlet weak var characterRaceLabel: UILabel!
    @IBOutlet weak var characterGenderLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterDetailsImageView: UIImageView!
    @IBOutlet var characterStatusLabel: UILabel!
    @IBOutlet weak var characterNumberOfEpisodesLabel: UILabel!
    @IBOutlet weak var characterLastLocation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = chosenCharacter.name ?? "Character Details"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.characterDetailsImageView.layer.cornerRadius = 25
        
        if let url = URL(string: chosenCharacter.image!){
            characterDetailsImageView.kf.setImage(with: url)
        }
        characterNameLabel.text = "Name: \(chosenCharacter.name ?? "")"
        characterGenderLabel.text = "Gender: \(chosenCharacter.gender ?? "")"
        characterRaceLabel.text = "Race: \(chosenCharacter.species ?? "")"
        characterStatusLabel.text = "Status: \(chosenCharacter.status ?? "")"
        characterNumberOfEpisodesLabel.text = "Number of episodes: \(chosenCharacter.episode.count)"
        characterLastLocation.text = "Last location: \(chosenCharacter.location.name ?? "")"
    }

}
