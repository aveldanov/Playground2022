//
//  APICaller.swift
//  CollectionViewApp
//
//  Created by Anton Veldanov on 9/10/21.
//

import Foundation

class APICaller{
    
   static let shared = APICaller()
    
    private init() {}
    
    func fetchImages(url: URL, completion: @escaping (Result<[ResultResponse],Error>)->Void){
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let jsonResult = try JSONDecoder().decode(APIResponse.self, from: data)
                
                completion(.success(jsonResult.results))
                return
            }catch{
                
                
                
            }
            
        }.resume()
        
        
    }

    
    
}



