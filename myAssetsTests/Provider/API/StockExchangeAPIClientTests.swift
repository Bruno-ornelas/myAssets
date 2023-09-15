//
//  StockExchangeAPIClientTests.swift
//  myAssetsTests
//
//  Created by Bruno Ornelas on 06/09/23.
//

import XCTest

final class MockURLProtocol: URLProtocol {
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
    override func startLoading() {
        self.client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() {
        
    }
    
}

final class StockExchangeAPIClientTests: XCTestCase {
    
    func test_returnsError_onRequestError() {
        
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
       
        var capturedError: Error? = nil
        
        urlSession.dataTask(with: URL(string: "url.com")!) { (data, response, error ) in
            
            if error != nil {
               capturedError = error
            }
        }
        
        XCTAssertNotNil(capturedError,"Erro deveria ser != de nil")
        
    }
    
 
}
