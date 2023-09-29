//
//  RMCharacterInfoCollectionViewCell.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 28.09.2023.
//

import UIKit

final class RMCharacterInfoCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "RMCharacterInfoCollectionViewCell"
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Earth"
        label.font = .systemFont(ofSize: 22, weight: .light)
        
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Location"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(systemName: "globe.americas")
        icon.contentMode = .scaleAspectFit
        
        return icon
    }()
    
    
    private let titleContainerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.backgroundColor = .secondarySystemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubViews(iconImageView, valueLabel, titleContainerView)
        contentView.backgroundColor = .tertiarySystemBackground
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        titleContainerView.addSubview(titleLabel)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            titleContainerView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.33),
            
            titleLabel.leadingAnchor.constraint(equalTo: titleContainerView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: titleContainerView.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: titleContainerView.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: titleContainerView.bottomAnchor),
            
            iconImageView.heightAnchor.constraint(equalToConstant: 30),
            iconImageView.widthAnchor.constraint(equalToConstant: 30),
            iconImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 35),
            iconImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            valueLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 10),
            valueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            valueLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 36),
            valueLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        valueLabel.text = nil
//        titleLabel.text = nil
//        iconImageView.image = nil
    }
    
    
    public func configure(with viewModel: RMCharacterInfoCollectionViewCellViewModel) {
        
    }
}
