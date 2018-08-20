//
//  FirstViewController+View.swift
//  Testable App
//
//  Created by Bruno Alves on 17/08/18.
//  Copyright © 2018 Bruno Alves. All rights reserved.
//

import UIKit

protocol FirstView: class {
    func didLoadedLabel(value: FirstModel.ViewModel)
}

extension FirstViewController: FirstView {
    func didLoadedLabel(value: FirstModel.ViewModel) {
        label.alpha = 0
        label.text = value.customText
        
        UIView.animate(withDuration: 1) {
            self.label.alpha = 1
        }
    }
}
