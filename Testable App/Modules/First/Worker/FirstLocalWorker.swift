//
//  FirstLocalWorker.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

class FirstLocalWorker: FirstWorker {
    func requestData(completion: (FirstModel.Response) -> ()) {
        
        //TODO: Load data from coredata
        let _response = FirstModel.Response(id: 1, name: "Hello from CoreData")
        completion(_response)
    }
}
