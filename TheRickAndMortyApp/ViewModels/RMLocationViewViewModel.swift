//
//  RMLocationViewViewModel.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 2.10.2023.
//

import Foundation

final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = []
    
    private var cellViewModel: [String] = []
    
    //MARK: - Init
    
    init() {
        
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationRequest, expecting: String.self) {
            result in
            switch result {
            case .success(let model):
                break
            case .failure(let failure):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
