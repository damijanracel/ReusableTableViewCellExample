//
//  UserReusableDataProvider.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

struct UserReusableCellDataProvider: ReusableTableViewCellDataProvider {
    let user: User

    var leftTitle: String? {
        return user.name
    }
    
    var leftSubtitle: String? {
        return "Nick: " + user.nickname
    }
    
    var rightTitle: String? {
        return ""
    }
    
    var rightSubtitle: String? {
        return ""
    }
    
    var image: UIImage? {
        return nil
    }
}
