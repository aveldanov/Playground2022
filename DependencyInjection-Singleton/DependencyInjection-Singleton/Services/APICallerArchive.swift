//
//  APICaller.swift
//  DependencyInjection-Singleton
//
//  Created by Anton Veldanov on 10/9/21.
//

import Foundation
import UIKit







//Singleton ----> Solution use extenstions
//Removed 'final'

//API Module
class APICallerArchive{
    // set to var
    static let shared = APICallerArchive()
    private init(){}
    
//
//    func login(completion: @escaping(LoggedInUser)->Void){
//
//    }
    

    
    func execute(_ : URLSession, completion: (Data)->Void){
        
    }
}
/*
//signleton (kinda)
URLSession.shared
*/
let api = APICallerArchive.shared
/*
 Since Singleton cannot be changed - no way to replace 'shared' with mock input
 
 */
//
//// Thats why we need the APICaller class NOT final
//class MockAPICaller: APICaller{
//    // replace login function with MOCK
////    init(){}
//}

//set shared to VAR

//APICaller.shared = MockAPICaller()
//let caller = APICaller.shared
//LOGIN module
struct LoggedInUser{
}
extension APICallerArchive{
        func login(completion: @escaping(LoggedInUser)->Void){
    
        }
}



class LoginVC: UIViewController{
    //set to var
//    let api = APICaller.shared
    
    func didTapLoginButton(){
        var api = APICallerArchive.shared
        api.login(){ user in
           //Do something - show next screen
            // say go to feed screen
        }
        
    }
    
}

// FEED Modul

struct FeedItem{
    
}
extension APICallerArchive{
    func loadFeed(completion: ([FeedItem])->Void){
        
    }
}

class FeedVC: UIViewController{
    var api = APICallerArchive.shared


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // all the class need is to call a functions loadFeed, but we have to create a new instance of APICaller class
        api.loadFeed{loadedItems in
            //updateUI
            
        }
    }
    
}
