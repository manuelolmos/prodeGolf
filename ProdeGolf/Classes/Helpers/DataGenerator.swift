//
//  DataGenerator.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

struct DataGenerator {

    private let ranking = [
        ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
        ["Homa", "Finau", "Burns", "Day", "Rose"],
        ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
        ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
    ]

    func generateGamblers() -> [Gambler] {
        return [
            Gambler(
                name: "Pipe",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ],
                draftPositions: [0, 2, 1, 0]
            ),
            Gambler(
                name: "Pedro",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ],
                draftPositions: [1, 0, 2, 1]
            ),
            Gambler(
                name: "Chacho",
                wishPicks: [
                    ["Rory", "Scottie", "Rahm", "Morikawa", "Hovland"],
                    ["Homa", "Finau", "Burns", "Day", "Rose"],
                    ["Thomas", "Cantlay", "Xander", "Fowler", "Young"],
                    ["Speith", "T. Kim", "S.W Kim", "Kuchar", "Woods"]
                ],
                draftPositions: [2, 1, 0, 2]
            )
        ]
    }

    func generateDraft(gamblers: [Gambler]) -> [BucketSelection] {
        var draftData = [BucketSelection]()
        for bucketNumber in 0...(ranking.count-1) {
            let sortedGamblers = gamblers.sorted { lhsGambler, rhsGambler in
                lhsGambler.draftPositions[bucketNumber] < rhsGambler.draftPositions[bucketNumber]
            }
            draftData.append(BucketSelection(golfers: ranking[bucketNumber], gamblers: sortedGamblers))
        }
        return draftData
    }
}
