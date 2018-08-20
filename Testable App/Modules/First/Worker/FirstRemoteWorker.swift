//
//  FirstRemoteWorker.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

class FirstRemoteWorker: FirstWorker {
    func requestData(completion: RequestHandlerSuccess) {
        
        //TODO: Make request from remote server (alamofire)
        let _response = FirstModel.Response(id: 1, name: "Hello from Server")
        completion(_response)
    }
}
