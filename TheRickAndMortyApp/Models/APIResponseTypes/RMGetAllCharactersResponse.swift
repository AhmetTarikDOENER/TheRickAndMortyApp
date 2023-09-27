//
//  GetAllCharactersResponse.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 26.09.2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMCharacter]
}
