//
//  RMSearchViewController.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 30.09.2023.
//

import UIKit

/// Configurable Controller to search
class RMSearchViewController: UIViewController {

    struct Config {
        
        enum `Type` {
            case character
            case episode
            case location
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        view.backgroundColor = .systemBackground
    }

}
