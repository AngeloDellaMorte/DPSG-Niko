//
//  NetworkController.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

class ApiController {
    private let baseURL : String
    private let userURL : String
    private let childURL : String
    private let eventURL : String
    
    init() {
        self.baseURL = "http://dev.quiggy.de/api"
        self.userURL = baseURL + "/user"
        self.childURL = baseURL + "/child"
        self.eventURL = baseURL + "/event"
    }
    
    func loadUser(withCompletion completion: @escaping (UserModel?) -> Void) {
        let session = URLSession(configuration: .ephemeral, delegate: nil, delegateQueue: OperationQueue.main)
        let url = URL(string: "http://dev.quiggy.de/api/user")!
        let task = session.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            
            var httpResponse = HTTPURLResponse()
            httpResponse = response as! HTTPURLResponse
            print("Status code: (\(httpResponse.statusCode))")
            let decoder = JSONDecoder();
            
            if (httpResponse.statusCode == 200) {
                guard let data = data else {
                    completion(nil)
                    return
                }
                
                guard let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) else {
                    completion(nil)
                    return
                }
                debugPrint(json)
                
                guard let user: UserModel = try? decoder.decode(UserModel.self, from: data) else {
                    completion(nil)
                    return
                }
                //let user: [UserModel] = [] // Transform JSON into Question values
                completion(user)
            } else {
                guard let data = data else {
                    completion(nil)
                    return
                }
                
                if let value = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? String {
                    print(value) // 22
                }
                
                let error = try! decoder.decode(ApiErrorModel.self, from: data)
                
                debugPrint(error)
                completion(nil)
            }
        })
        task.resume()
    }
}
