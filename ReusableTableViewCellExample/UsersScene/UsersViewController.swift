//
//  UsersViewController.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var users = [User]()
    var userProvider = UserProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupUsers()
    }
    
    func setupTableView() {
        tableView.register(UINib(nibName: "ReusableTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableTableViewCell")

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupUsers() {
        users = userProvider.getUsers()
    }
}

extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableTableViewCell") as? ReusableTableViewCell, indexPath.row < users.count  else {
            return UITableViewCell()
        }
        
        let user = users[indexPath.row]
        let dataProvider = UserReusableCellDataProvider(user: user)
        cell.set(with: dataProvider)
        return cell
    }
}
