//
//  UserDataSource.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

class UserProvider {
    
    func getUsers() -> [User] {
        var users = [User]()
        users.append(User(name: "Stephan Ramirez",
                          nickname: "Dash"))
        users.append(User(name: "Bernice Bellini",
                          nickname: "Comet"))
        users.append(User(name: "Hui Thornell",
                          nickname: "Scruffy"))
        users.append(User(name: "Herschel Chute",
                          nickname: "Silly"))
        users.append(User(name: "Mellie Harnois",
                          nickname: "Rebel"))
        
        return users
    }
}
