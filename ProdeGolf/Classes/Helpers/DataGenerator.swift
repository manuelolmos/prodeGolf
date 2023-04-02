//
//  DataGenerator.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

struct DataGenerator {

    private let ranking = [
        ["Scottie Scheffler", "Rory McIlroy", "Jon Rahm", "Patrick Cantlay", "Max Homa", "Xander Schauffele", "Will Zalatoris", "Viktor Hovland", "Sam Burns", "Justin Thomas"],
        ["Collin Morikawa", "Tony Finau", "Cameron Young", "Matt Fitzpatrick", "Jordan Spieth", "Tyrrell Hatton", "Sungjae Im", "Tom Kim", "Kurt Kitayama", "Hideki Matsuyama"],
        ["Keegan Bradley", "Shane Lowry", "Billy Horschel", "Tom Hoge", "Tommy Fleetwood", "Brian Harman", "Sahith Theegala", "Justin Rose", "Sepp Straka", "Jason Day", "Chris Kirk", "Seamus Power", "Ryan Fox", "Russell Henley", "Adam Scott", "Si Woo Kim", "Corey Conners", "Kyoung-Hoon Lee", "Alexander Noren", "Harris English"],
        ["Keith Mitchell", "Min Woo Lee", "Kevin Kisner", "J.T. Poston", "Taylor Moore", "Mackenzie Hughes", "Adam Svensson", "Adrian Meronk", "Harold Varner", "Scott Stallings", "Kazuki Higa", "Danny Willett", "Gary Woodland", "Francesco Molinari", "Cameron Champ", "Tiger Woods", "Sam Bennett", "Ben Carr", "Zach Johnson", "Aldrich Potgieter", "Harrison Crowe", "Matthew McClean", "Bernhard Langer", "Fred Couples", "Gordon Sargent", "Jose Maria Olazabal", "Larry Mize", "Mateo Fernandez de Oliveira", "Mike Weir", "Sandy Lyle", "Vijay Singh"],
        ["Cameron Smith", "Joaquin Niemann", "Abraham Ancer", "Thomas Pieters", "Talor Gooch", "Dustin Johnson", "Patrick Reed", "Jason Kokrak", "Kevin Na", "Brooks Koepka", "Louis Oosthuizen", "Bryson DeChambeau", "Sergio Garcia", "Bubba Watson", "Charl Schwartzel", "Phil Mickelson"]
    ]

    func generateGamblers() -> [Gambler] {
        return [
            Gambler(
                name: "Pipe",
                wishPicks: [
                    ["Rory McIlroy", "Scottie Scheffler", "Jon Rahm"],
                    ["Tony Finau", "Kurt Kitayama", "Tom Kim"],
                    ["Tommy Fleetwood"],
                    ["Kevin Kisner", "Cameron Champ"],
                    ["Dustin Johnson"]
                ],
                draftPositions: [0, 2, 1, 0, 2]
            ),
            Gambler(
                name: "Pedro",
                wishPicks: [
                    ["Rory McIlroy", "Scottie Scheffler", "Jon Rahm"],
                    ["Tony Finau", "Kurt Kitayama", "Tom Kim"],
                    ["Tommy Fleetwood"],
                    ["Kevin Kisner", "Cameron Champ"],
                    ["Dustin Johnson"]
                ],
                draftPositions: [1, 0, 2, 1, 0]
            ),
            Gambler(
                name: "Chacho",
                wishPicks: [
                    ["Rory McIlroy", "Scottie Scheffler", "Jon Rahm"],
                    ["Tony Finau", "Kurt Kitayama", "Tom Kim"],
                    ["Tommy Fleetwood"],
                    ["Kevin Kisner", "Cameron Champ"],
                    ["Dustin Johnson"]
                ],
                draftPositions: [2, 1, 0, 2, 1]
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
