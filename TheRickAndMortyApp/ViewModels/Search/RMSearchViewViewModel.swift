//
//  RMSearchViewViewModel.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 3.10.2023.
//

import Foundation

final class RMSearchViewViewModel {
    
    let config: RMSearchViewController.Config
    
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    
    private var searchText = ""
    
    private var optionMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> Void)?
    
    private var searchResultHandler: (() -> Void)?
    
    //MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    //MARK: - Public
    
    public func registerSearchResultHandler(_ block: @escaping () -> Void) {
        self.searchResultHandler = block
    }
    
    public func executeSearch() {
        // For testing
        print("Search text: \(searchText)")
        
        // Build arguments
        var queryParams: [URLQueryItem] = [
            URLQueryItem(name: "name", value: searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))
        ]
        // Add Options
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({
            _, element in
            let key: RMSearchInputViewViewModel.DynamicOption = element.key
            let value: String =  element.value
            return URLQueryItem(name: key.queryArgument, value: value)
        }))
        // Create request
        let request = RMRequest(endpoint: config.type.endpoint, queryParameters: queryParams)
        print(request.url?.absoluteString)
        RMService.shared.execute(request, expecting: RMGetAllCharactersResponse.self) {
            result in
            switch result {
            case .success(let model):
                print("Search results found \(model.results.count)")
            case .failure:
                break
            }
        }
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewViewModel.DynamicOption, String)) -> Void) {
        self.optionMapUpdateBlock = block
    }
}
