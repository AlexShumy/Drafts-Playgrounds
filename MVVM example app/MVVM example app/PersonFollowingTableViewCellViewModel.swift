//
//  PersonFollowingTableViewCellViewModel.swift
//  MVVM example app
//
//  Created by Alex Shumylo on 09.03.2022.
//


//HERE IT'S A VIEWMODEL (to render out our cell)


import UIKit

struct PersonFollowingTableViewCellViewModel {
    let name: String
    let username: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}
