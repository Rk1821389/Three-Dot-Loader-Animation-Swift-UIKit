//
//  ViewController.swift
//  Three Dots Jumping
//
//  Created by Manoj kumar on 14/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loader = ThreeDotLoader()
        loader.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loader)
       
        NSLayoutConstraint.activate([
            loader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loader.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loader.widthAnchor.constraint(equalToConstant: 60),
            loader.heightAnchor.constraint(equalToConstant: 20)
        ])
        
       

        
    }


}

