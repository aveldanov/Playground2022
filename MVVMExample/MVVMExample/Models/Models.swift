//
//  Models.swift
//  MVVMExample
//
//  Created by Anton Veldanov on 8/9/21.
//

import Foundation


struct Person{
    let name: String
    let birthdate: Date?
    let middleName: String?
    let address: String?
    let gender: Gender
    var username = "KanyeWest"
    
    init(name: String, birthdate: Date? = nil, middleName: String? = nil,address: String? = nil, gender: Gender = .unspecified ) {
        self.name = name
        self.birthdate = birthdate
        self.middleName = middleName
        self.address = address
        self.gender = gender
    }
}

enum Gender{
    case male, female, unspecified
}
