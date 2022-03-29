//
//  TestDelete4Tests.swift
//  TestDelete4Tests
//
//  Created by Anton Veldanov on 10/17/21.
//

import XCTest
@testable import TestDelete4

class TestDelete4Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    
    func testAPICaller_WhenValidDataProvided_ReturnSuccess(){
 
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLSession.self]
        let urlSession = URLSession(configuration: config)
        let jsonString = Constants.response
        MockURLSession.stubResponseData = jsonString.data(using: .utf8)
        
        let sut = APICaller(urlSession: urlSession)
        
        let expectation = self.expectation(description: "signupResponseModel wait")
        

        sut.fetchItems(urlString: "https://jsonplaceholder.typicode.com/users"){(result, error) in
            
            print("result", result)
            
            
            XCTAssertEqual(result[1].id, 2)
            expectation.fulfill()

        }
        
        self.wait(for: [expectation], timeout: 5)

        
        
    }


}
