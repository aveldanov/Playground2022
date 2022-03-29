//
//  ItemTableViewController.swift
//  TurboInt13DELEGATE
//
//  Created by Anton Veldanov on 9/6/21.
//

import UIKit

class ItemTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ItemTableViewCell else{
            fatalError("No Cell")
        }

        cell.delegate = self

        return cell
    }
    

}


extension ItemTableViewController: CellDelegate{
    func updateCell(with model: String) {
        
        print(model)
    }
    
    
    
    
}
