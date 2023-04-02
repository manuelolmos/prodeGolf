//
//  Gambler.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

class Gambler: NSObject {
    let name: String
    let wishPicks: [[String]]
    var picks: [String]
    
    init(name: String, wishPicks: [[String]], picks: [String] = []) {
        self.name = name
        self.wishPicks = wishPicks
        self.picks = picks
    }
}
