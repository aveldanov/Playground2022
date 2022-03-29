//
//  PersonFollowingTableViewCellViewModel.swift
//  MVVMExample
//
//  Created by Anton Veldanov on 8/9/21.
//

import UIKit


struct PersonFollowingTableViewCellViewModel{
    let name: String
    let userName: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        userName = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}
