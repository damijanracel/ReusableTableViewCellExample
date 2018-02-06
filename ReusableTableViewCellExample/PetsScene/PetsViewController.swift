//
//  PetsViewController.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

class PetsViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var pets = [Pet]()
    var petsProvider = PetsProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupPets()
    }
    
    func setupTableView() {
        tableView.register(UINib(nibName: "ReusableTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupPets() {
        pets = petsProvider.getPets()
    }
}

extension PetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableTableViewCell") as? ReusableTableViewCell, indexPath.row < pets.count  else {
            return UITableViewCell()
        }
        
        let pet = pets[indexPath.row]
        let dataProvider = PetReusableCellDataProvider(pet: pet)
        cell.set(with: dataProvider)
        return cell
    }
}
