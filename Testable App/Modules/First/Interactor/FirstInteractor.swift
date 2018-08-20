//
//  FirstInteractor.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

protocol FirstInteractor {
    var presenter:FirstPresenter? { get set }
    var worker:FirstWorker? { get set }
    var isOnline:Bool! { get set }
    func fetchLabelText(request: FirstModel.Request)
}

class FirstInteractorImplementation: FirstInteractor {
    
    var presenter: FirstPresenter? = FirstPresenterImplementation()
    var worker: FirstWorker?
    var isOnline: Bool! = true
    
    func fetchLabelText(request: FirstModel.Request) {
        worker = isOnline ? FirstRemoteWorker() : FirstLocalWorker()
        
        worker?.requestData(completion: {
            (response) in
            presenter?.presentRequestResult(response: response)
        })
    }
    
}
