//
//  RMSearchViewController.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 30.09.2023.
//

import UIKit

/// Configurable Controller to search
class RMSearchViewController: UIViewController {
    
    /// Configuration for search  session
    struct Config {
        
        enum `Type` {
            case character
            case episode
            case location
            
            var title: String {
                switch self {
                case .character:
                    return "Search Characters"
                case .location:
                    return "Search Locations"
                case .episode:
                    return "Search Episodes"
                }
            }
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    //MARK: - Init
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = config.type.title
        view.backgroundColor = .systemBackground
    }
  
}
