//
//  Extrensions.swift
//  TheRickAndMortyApp
//
//  Created by Ahmet Tarik DÖNER on 26.09.2023.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach ({
            addSubview($0)
        })
    }
}
