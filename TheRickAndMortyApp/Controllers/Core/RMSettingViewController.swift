//
//  RMSettingViewController.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 25.09.2023.
//

import UIKit

/// Controller to show various app option and settings
final class RMSettingViewController: UIViewController {

    private let viewModel = RMSettingsViewViewModel(
        cellViewModels: RMSettingsOption.allCases.compactMap({
            return RMSettingsCellViewModel(type: $0)
        })
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
    }
}
