//
//  routerAPI.swift
//  myAssets
//
//  Created by Bruno Ornelas on 06/09/23.
//

import Foundation

class RouterAPI {
    
//    internal func RequestURL(asset: String) throws -> URL? {
//        guard let url = URL(string: StockExchangeAPI.baseUrl+"\(asset)") else { return nil }
//        let urlRequest = URLRequest(url: url)
//        return urlRequest.url
//        
//    }
    
//    func fetchData(completion: @escaping (Result<[Product], Error>) -> Void) {
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                guard let data else {
//                    completion(.failure(.invalidData))
//                    return
//                }
//                guard let response = response as? HTTPURLResponse, 200 ... 299  ~= response.statusCode else {
//                    completion(.failure(.invalidResponse))
//                    return
//                }
//                
//                // JSONDecoder() converts data to model of type Array
//                do {
//                    let products = try JSONDecoder().decode([Products].self, from: data)
//                    completion(.success(products))
//                }
//                catch {
//                    completion(.failure(.message(error)))
//                }
//            }.resume()
//        }
    
}
