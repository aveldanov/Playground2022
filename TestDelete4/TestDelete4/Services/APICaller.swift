//
//  APICaller.swift
//  TestDelete4
//
//  Created by Anton Veldanov on 10/17/21.
//

import Foundation


class APICaller{
    
    private var urlSession: URLSession
    
    init(urlSession: URLSession = .shared){
        self.urlSession = urlSession
    }
    
    
    func fetchItems(urlString: String, completion: @escaping ([User], Error)->Void){
        
        print("CALLEDQQQQQQQ")
        let url = URL(string: urlString)!
        
        
        urlSession.dataTask(with: url) { data, response, error in
            print("DATATDTTATATAT", data, response,error)
            guard let data = data else {
                return
            }
        
        
            guard let items = try? JSONDecoder().decode([User].self, from: data) else{
                return
            }
            
            let result = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
            print("TOTOTOTOOTOTO",result)
            
            completion(items, URLSessionError.FetchError)
            
        }.resume()
        
        
    }
    
    
    
    
    
}
