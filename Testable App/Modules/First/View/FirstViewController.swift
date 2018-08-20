//
//  ViewController.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: - UI Elements (aka outlets)
    
    var label:UILabel!
    
    //MARK: - Interactor
    
    var interactor:FirstInteractor!
    
    //MARK: - Lyfecicle

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor = FirstInteractorImplementation()
        interactor.presenter?.view = self
        setupView()
        
        //Load data
        interactor.fetchLabelText(request: FirstModel.Request(id: 0))
    }

    //MARK: - UI setup
    
    private func setupView() {
        view.backgroundColor = .white
        
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

