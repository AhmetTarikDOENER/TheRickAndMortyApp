//
//  RMSearchResultViewViewModel.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 6.10.2023.
//

import Foundation

enum RMSearchResultViewViewModel {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
