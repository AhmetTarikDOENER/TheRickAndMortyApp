//
//  RMCharacterEpisodeCollectionViewCell.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 28.09.2023.
//

import UIKit

final class RMCharacterEpisodeCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "RMCharacterEpisodeCollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    
    private func setupConstraints() {
        
    }
    
    
    override func prepareForReuse() {
        
    }
    
    
    public func configure(with viewModel: RMCharacterEpisodeCollectionViewCellViewModel) {
        
    }
}