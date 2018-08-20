//
//  FirstWorker.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

protocol FirstWorker {
    typealias RequestHandlerSuccess = (FirstModel.Response)->()
    func requestData(completion: RequestHandlerSuccess)
}
