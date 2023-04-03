//
//  Gambler.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

class Gambler: NSObject, Codable {
    let name: String
    let wishPicks: [[String]]
    var picks: [String]
    let draftPositions: [Int]
    
    init(name: String, wishPicks: [[String]], draftPositions: [Int], picks: [String] = []) {
        self.name = name
        self.wishPicks = wishPicks
        self.draftPositions = draftPositions
        self.picks = picks
    }
}
