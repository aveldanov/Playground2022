//
//  ViewController.swift
//  MVC-MVVM
//
//  Created by Anton Veldanov on 10/10/21.
//

import UIKit

class UsersTableViewController: UITableViewController {

    
    var users: [User] = []{
        // every time a user assigned we will reload tableview
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()

            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUsersCall()
    }
    
    
    
    private func fetchUsersCall(){
        APICaller.shared.fetchUsers { result in
            switch result{
            case .success(let users):
                self.users = users
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let user = users[indexPath.row]
        
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = user.email
        
        return cell
    }


}


class APICaller{
    
    static let shared = APICaller()
    
    private init(){}
    
    func fetchUsers(completion: @escaping (Result<[User], Error>)->Void){
        
        let urlString = "https://jsonplaceholder.typicode.com/users"
        let url = URL(string: urlString)!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else{
                fatalError("Data can't be found")
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                completion(.success(users))
            }catch{
                completion(.failure(error))
            }
        }.resume()
        
    }
    
    
}


struct User: Decodable{
    let id: Int
    let name: String
    let email: String
    
}
