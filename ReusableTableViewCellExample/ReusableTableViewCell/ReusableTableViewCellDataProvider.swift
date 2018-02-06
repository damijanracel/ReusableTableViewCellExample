//
//  ReusableTableViewCellDataProvider.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

protocol ReusableTableViewCellDataProvider {
    var leftTitle: String? { get }
    var leftSubtitle: String? { get }
    var rightTitle: String? { get }
    var rightSubtitle: String? { get }
    var image: UIImage? { get }
}
