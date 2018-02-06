//
//  PetReusableDataProvider.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

struct PetReusableCellDataProvider: ReusableTableViewCellDataProvider {
    let pet: Pet
    
    var leftTitle: String? {
        return pet.name
    }
    
    var leftSubtitle: String? {
        return "Owner: " + pet.owner
    }
    
    var rightTitle: String? {
        return pet.breed
    }
    
    var rightSubtitle: String? {
        return pet.weight.description
    }
    
    var image: UIImage? {
        return pet.avatar
    }
}

