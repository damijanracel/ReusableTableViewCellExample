//
//  PetsProvider.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import Foundation

import UIKit

class PetsProvider {
    
    func getPets() -> [Pet] {
        var pets = [Pet]()
        pets.append(Pet(name: "Archie",
                        owner: "Stephan Ramirez",
                        breed: "German Shepherd",
                        weight: 35,
                        avatar: UIImage(named: "pet")))
        pets.append(Pet(name: "Misty",
                        owner: "Bernice Bellini",
                        breed: "Labrador Retriever",
                        weight: 31,
                        avatar: UIImage(named: "pet")))
        pets.append(Pet(name: "Joy",
                        owner: "Hui Thornell",
                        breed: "Rottweiler",
                        weight: 53,
                        avatar: UIImage(named: "pet")))
        pets.append(Pet(name: "Grizzly",
                        owner: "Herschel Chute",
                        breed: "Beagle",
                        weight: 21,
                        avatar: UIImage(named: "pet")))
        pets.append(Pet(name: "Fifi",
                        owner: "Mellie Harnois",
                        breed: "Buldog",
                        weight: 23,
                        avatar: UIImage(named: "pet")))
        
        return pets
    }
}
