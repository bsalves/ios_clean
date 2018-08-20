//
//  FirstModel.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

struct FirstModel {
    struct Request {
        var id:Int!
    }
    struct Response {
        var id:Int!
        var name:String!
    }
    struct ViewModel {
        var customText:String!
    }
}
