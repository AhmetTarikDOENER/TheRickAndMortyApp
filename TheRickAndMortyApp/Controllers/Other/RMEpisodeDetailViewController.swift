//
//  RMEpisodeDetailViewController.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 30.09.2023.
//

import UIKit

/// VC to show details about single episode
class RMEpisodeDetailViewController: UIViewController {

    private let viewModel: RMEpisodeDetailViewViewModel
    
    //MARK: - Init
    
    init(url: URL?) {
        self.viewModel = .init(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Episode"
        view.backgroundColor = .systemRed
    }
}
