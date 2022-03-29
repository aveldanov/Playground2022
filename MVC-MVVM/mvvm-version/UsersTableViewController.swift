//
//  ViewController.swift
//  mvvm-version
//
//  Created by Anton Veldanov on 10/10/21.
//

import UIKit
import Combine


class UsersViewModel{
    
    // Depndency Injection
    
    private let apiCaller: APICaller
    private let endpoint: Endpoint
    
    
    var usersSubject = PassthroughSubject<[User], Error>()
    
    init(apiCaller: APICaller, endpoint: Endpoint){
        self.apiCaller = apiCaller
        self.endpoint = endpoint
    }
    
    func fethcUsers(){
        let url = URL(string: endpoint.urlString)!
//        print(url)
        apiCaller.fetchItems(url: url) { [weak self] (result: Result<[User],Error>) in
//            print(result)
            switch result{
            case .success(let users):
//                print(users)
                self?.usersSubject.send(users)
            case .failure(let error):
                print(error.localizedDescription)
                self?.usersSubject.send(completion: .failure(error))
            }
        }
    }
    
}




class UsersTableViewController: UITableViewController {

    
    var viewModel: UsersViewModel!
    private let apiCaller = APICaller()
    var usersLoaded: [User] = []
    
    private var subscriber: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        fetchUsersCall()
        observeViewModel()
    }
    
    private func setupViewModel(){
        viewModel = UsersViewModel(apiCaller: apiCaller, endpoint: .usersFetch)
    }
    
    
    private func fetchUsersCall(){
        
        viewModel.fethcUsers()
    }
    
    private func observeViewModel(){
        subscriber = viewModel.usersSubject.sink { resultCompletion in
            switch resultCompletion{
            case .failure(let error):
                print(error.localizedDescription)
            case .finished:
                break
            }
        } receiveValue: { users in
            DispatchQueue.main.async {
                self.usersLoaded = users
                self.tableView.reloadData()
            }

        }

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersLoaded.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
        let user = usersLoaded[indexPath.row]
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = user.email
        return cell
    }


}

class APICaller{
    
    private var subscribers = Set<AnyCancellable>()
    
    func fetchItems<T: Decodable>(url: URL, completion: @escaping (Result<[T], Error>)->Void){
        // SINK passes result
        URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [T].self, decoder: JSONDecoder())
            .sink { resultCompletion in
//                print(resultCompletion)
                switch resultCompletion{
                case .failure(let error):
                    print(error.localizedDescription)
                    completion(.failure(error))
                case .finished:
                    print("Success")
                    break
                }
            } receiveValue: { resultArray in
//                print(resultArray)
                completion(.success(resultArray))
            }.store(in: &subscribers)

    }
    
}



struct User: Decodable{
    let id: Int
    let name: String
    let email: String
    
}


enum Endpoint{
    case usersFetch
    case commentsFetch
    var urlString: String{
        switch self{
        case .usersFetch:
            return "https://jsonplaceholder.typicode.com/users"
        case .commentsFetch:
            return "https://jsonplaceholder.typicode.com/comments"
        }
    }
}
