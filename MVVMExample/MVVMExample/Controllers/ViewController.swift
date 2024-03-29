//
//  ViewController.swift
//  MVVMExample
//
//  Created by Anton Veldanov on 8/9/21.
//

import UIKit







class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var models = [Person]()
    
    
    private let tableView: UITableView = {
       let table = UITableView()
        table.register(PersonFollowingTableViewCell.self, forCellReuseIdentifier: PersonFollowingTableViewCell.identifier)
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        configureModels()
    }
    
    private func configureModels(){
        let names = [
        "Joe", "Anton","Lana","Plot","Larry"
        ]
        
        for name in names{
            models.append(Person(name: name))
        }
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingTableViewCell.identifier, for: indexPath) as? PersonFollowingTableViewCell else{
            return UITableViewCell()
        }
        let model = models[indexPath.row]
//        cell.textLabel?.text = model.name
        cell.configure(with: PersonFollowingTableViewCellViewModel(with: model))
        cell.delegate = self
        
        return cell
    }


}


extension ViewController: PersonFollowingTableViewCellDelegate{
    func personFollowingTableViewCell(_ cell: PersonFollowingTableViewCell, didTapWith viewModel: PersonFollowingTableViewCellViewModel) {
        

        
        
        
    }
    
    
    
    
}
