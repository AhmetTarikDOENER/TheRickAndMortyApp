//
//  RMSettingsCellViewModel.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 2.10.2023.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    
    let id = UUID()
    
    private let type: RMSettingsOption
    
    
    
    //MARK: - Init
    
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    
    //MARK: - Public
    
    public var image: UIImage? {
        return type.iconImage
    }
    
    
    public var title: String {
        return type.diplayTitle
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
}
