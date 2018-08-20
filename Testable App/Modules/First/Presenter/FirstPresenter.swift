//
//  FirstPresenter.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import Foundation

protocol FirstPresenter {
    var view:FirstView? { get set }
    func presentRequestResult(response: FirstModel.Response)
}

class FirstPresenterImplementation: FirstPresenter {
    weak var view: FirstView?
    
    func presentRequestResult(response: FirstModel.Response) {
        let _value = FirstModel.ViewModel(customText: response.name)
        view?.didLoadedLabel(value: _value)
    }
}
