//
//  DataGenerator.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

struct DataGenerator {

    func generateGamblers() -> [Gambler] {
        return [
            Gambler(
                name: "Pipe",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ]
            ),
            Gambler(
                name: "Pedro",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ]
            ),
            Gambler(
                name: "Chacho",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ]
            )
        ]
    }

    func generateDraft(gamblers: [Gambler]) -> [BucketSelection] {
        return [
            BucketSelection(
                golfers: ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                gamblers: [gamblers[0], gamblers[1], gamblers[2]]
            ),
            BucketSelection(
                golfers: ["Homa", "Finau", "Burns", "Day", "Rose"],
                gamblers: [gamblers[1], gamblers[2], gamblers[0]]
            ),
            BucketSelection(
                golfers: ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                gamblers: [gamblers[2], gamblers[0], gamblers[1]]
            ),
            BucketSelection(
                golfers: ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"],
                gamblers: [gamblers[0], gamblers[1], gamblers[2]]
            )
        ]
    }
}
