//
//  NetworkService.swift
//  MVC-N
//
//  Created by Дмитрий Никольский on 14.11.2022.
//

import Foundation

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, complection: @escaping (Any) -> Void){
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    complection (json)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
  
