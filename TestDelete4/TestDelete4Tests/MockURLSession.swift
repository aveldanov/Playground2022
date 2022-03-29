//
//  MockURLSession.swift
//  TestDelete4Tests
//
//  Created by Anton Veldanov on 10/17/21.
//

import Foundation
@testable import TestDelete4


class MockURLSession: URLProtocol{
    
    static var stubResponseData: Data?
    

    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        
        self.client?.urlProtocol(self, didLoad: MockURLSession.stubResponseData ?? Data())
        self.client?.urlProtocolDidFinishLoading(self)
        print("YOYOYOOYOYOYO",MockURLSession.stubResponseData)

//        let items = try? JSONDecoder().decode([User].self, from: MockURLSession.stubResponseData ?? Data())
//        print("ITEMS:", items)
    }
    
    override func stopLoading() {
        
    }
    
    
    
    
}
