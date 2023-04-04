//
//  DataGenerator.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

struct DataGenerator {

    let ranking = [
        ["Scottie Scheffler", "Rory McIlroy", "Jon Rahm", "Patrick Cantlay", "Max Homa", "Xander Schauffele", "Will Zalatoris", "Viktor Hovland", "Sam Burns", "Justin Thomas"],
        ["Collin Morikawa", "Tony Finau", "Cameron Young", "Matt Fitzpatrick", "Jordan Spieth", "Tyrrell Hatton", "Sungjae Im", "Tom Kim", "Kurt Kitayama", "Hideki Matsuyama"],
        ["Keegan Bradley", "Shane Lowry", "Billy Horschel", "Tom Hoge", "Tommy Fleetwood", "Brian Harman", "Sahith Theegala", "Justin Rose", "Sepp Straka", "Jason Day", "Chris Kirk", "Seamus Power", "Ryan Fox", "Russell Henley", "Adam Scott", "Si Woo Kim", "Corey Conners", "Kyoung-Hoon Lee", "Alexander Noren", "Harris English"],
        ["Keith Mitchell", "Min Woo Lee", "Kevin Kisner", "J.T. Poston", "Taylor Moore", "Mackenzie Hughes", "Adam Svensson", "Adrian Meronk", "Scott Stallings", "Kazuki Higa", "Danny Willett", "Gary Woodland", "Francesco Molinari", "Cameron Champ", "Tiger Woods", "Sam Bennett", "Ben Carr", "Zach Johnson", "Aldrich Potgieter", "Harrison Crowe", "Matthew McClean", "Bernhard Langer", "Fred Couples", "Gordon Sargent", "Jose Maria Olazabal", "Larry Mize", "Mateo Fernandez de Oliveira", "Mike Weir", "Sandy Lyle", "Vijay Singh"],
        ["Cameron Smith", "Joaquin Niemann", "Abraham Ancer", "Thomas Pieters", "Talor Gooch", "Mito Pereira", "Harold Varner", "Dustin Johnson", "Patrick Reed", "Jason Kokrak", "Kevin Na", "Brooks Koepka", "Louis Oosthuizen", "Bryson DeChambeau", "Sergio Garcia", "Bubba Watson", "Charl Schwartzel", "Phil Mickelson"]
    ]

    func generateGamblers() -> [Gambler] {
        return [
            Gambler(
                name: "Pancho",
                wishPicks: [
                    ["Rory McIlroy", "Max Homa", "Patrick Cantlay", "Scottie Scheffler", "Jon Rahm", "Justin Thomas", "Sam Burns", "Viktor Hovland", "Xander Schauffele", "Will Zalatoris"],
                    ["Cameron Young", "Tony Finau", "Sungjae Im", "Collin Morikawa", "Tyrrell Hatton", "Jordan Spieth", "Hideki Matsuyama", "Matt Fitzpatrick", "Kurt Kitayama", "Tom Kim"],
                    ["Jason Day", "Chris Kirk", "Shane Lowry", "Justin Rose", "Keegan Bradley", "Brian Harman", "Billy Horschel", "Adam Scott", "Corey Conners", "Si Woo Kim"],
                    ["Mackenzie Hughes", "Keith Mitchell", "Gary Woodland", "Tiger Woods", "Cameron Champ", "Adrian Meronk", "J.T. Poston", "Min Woo Lee", "Kevin Kisner", "Scott Stallings"],
                    ["Cameron Smith", "Talor Gooch", "Dustin Johnson", "Jason Kokrak", "Thomas Pieters"]
                ],
                draftPositions: [1, 9, 6, 4, 10]
            ),
            Gambler(
                name: "Toro",
                wishPicks: [
                    ["Rory McIlroy", "Scottie Scheffler", "Jon Rahm", "Will Zalatoris", "Justin Thomas", "Sam Burns", "Xander Schauffele", "Max Homa", "Patrick Cantlay", "Viktor Hovland"],
                    ["Collin Morikawa", "Hideki Matsuyama", "Tony Finau", "Matt Fitzpatrick", "Cameron Young", "Jordan Spieth", "Tyrrell Hatton", "Sungjae Im", "Tom Kim", "Kurt Kitayama"],
                    ["Tommy Fleetwood", "Jason Day", "Russell Henley", "Keegan Bradley", "Shane Lowry", "Justin Rose", "Tom Hoge", "Ryan Fox", "Corey Conners", "Alexander Noren"],
                    ["Francesco Molinari", "Keith Mitchell", "Cameron Champ", "Zach Johnson", "Adam Svensson", "Taylor Moore", "Kevin Kisner", "Scott Stallings", "Harrison Crowe", "Mateo Fernandez de Oliveira"],
                    ["Joaquin Niemann", "Abraham Ancer", "Kevin Na", "Brooks Koepka", "Patrick Reed", "Dustin Johnson", "Cameron Smith", "Charl Schwartzel", "Bubba Watson", "Sergio Garcia"]
                ],
                draftPositions: [9, 5, 5, 5, 1]
            ),
            Gambler(
                name: "Nano",
                wishPicks: [
                    ["Scottie Scheffler", "Jon Rahm", "Rory McIlroy", "Sam Burns", "Xander Schauffele", "Justin Thomas", "Viktor Hovland", "Patrick Cantlay", "Max Homa", "Will Zalatoris"],
                    ["Cameron Young", "Matt Fitzpatrick", "Jordan Spieth", "Tyrrell Hatton", "Hideki Matsuyama", "Collin Morikawa", "Tony Finau", "Tom Kim", "Kurt Kitayama", "Sungjae Im"],
                    ["Billy Horschel", "Jason Day", "Keegan Bradley", "Corey Conners", "Russell Henley", "Shane Lowry", "Tom Hoge", "Tommy Fleetwood", "Brian Harman", "Justin Rose"],
                    ["Min Woo Lee", "Francesco Molinari", "Keith Mitchell", "J.T. Poston", "Taylor Moore", "Mackenzie Hughes", "Gary Woodland", "Tiger Woods", "Danny Willett", "Kevin Kisner"],
                    ["Joaquin Niemann", "Brooks Koepka", "Patrick Reed", "Dustin Johnson", "Talor Gooch", "Cameron Smith", "Bryson DeChambeau", "Mito Pereira", "Harold Varner", "Abraham Ancer"]
                ],
                draftPositions: [3, 8, 3, 9, 4]
            ),
            Gambler(
                name: "Pedro",
                wishPicks: [
                    ["Scottie Scheffler", "Rory McIlroy", "Xander Schauffele", "Sam Burns", "Jon Rahm"],
                    ["Collin Morikawa", "Hideki Matsuyama", "Matt Fitzpatrick", "Tyrrell Hatton", "Tom Kim"],
                    ["Corey Conners", "Shane Lowry", "Jason Day", "Si Woo Kim"],
                    ["Keith Mitchell", "Kazuki Higa", "Kevin Kisner"],
                    ["Cameron Smith", "Joaquin Niemann", "Mito Pereira"]
                ],
                draftPositions: [5, 7, 1, 8, 8]
            ),
            Gambler(
                name: "Oso",
                wishPicks: [
                    ["Rory McIlroy", "Scottie Scheffler", "Jon Rahm", "Justin Thomas", "Viktor Hovland"],
                    ["Jordan Spieth", "Cameron Young", "Matt Fitzpatrick", "Sungjae Im", "Collin Morikawa"],
                    ["Justin Rose", "Adam Scott", "Harris English", "Corey Conners", "Billy Horschel"],
                    ["Tiger Woods", "Cameron Champ", "Adam Svensson", "J.T. Poston", "Kevin Kisner"],
                    ["Cameron Smith", "Louis Oosthuizen", "Phil Mickelson", "Dustin Johnson", "Patrick Reed"]
                ],
                draftPositions: [10, 3, 8, 2, 2]
            ),
            Gambler(
                name: "Alan",
                wishPicks: [
                    ["Scottie Scheffler", "Rory McIlroy", "Jon Rahm", "Xander Schauffele", "Max Homa", "Justin Thomas", "Patrick Cantlay", "Sam Burns", "Viktor Hovland", "Will Zalatoris"],
                    ["Jordan Spieth", "Cameron Young", "Tony Finau", "Collin Morikawa", "Sungjae Im", "Matt Fitzpatrick", "Tom Kim", "Tyrrell Hatton", "Kurt Kitayama", "Hideki Matsuyama"],
                    ["Jason Day", "Corey Conners", "Shane Lowry", "Tom Hoge", "Ryan Fox", "Adam Scott", "Keegan Bradley", "Si Woo Kim", "Sahith Theegala", "Justin Rose"],
                    ["Tiger Woods", "Min Woo Lee", "Keith Mitchell", "Mackenzie Hughes", "Adam Svensson", "J.T. Poston", "Danny Willett", "Taylor Moore", "Gary Woodland", "Cameron Champ"],
                    ["Cameron Smith", "Dustin Johnson", "Brooks Koepka", "Joaquin Niemann", "Patrick Reed", "Louis Oosthuizen", "Abraham Ancer", "Thomas Pieters", "Bryson DeChambeau", "Charl Schwartzel"]
                ],
                draftPositions: [7, 1, 9, 7, 3]
            ),
            Gambler(
                name: "Tatu",
                wishPicks: [
                    ["Scottie Scheffler", "Jon Rahm", "Rory McIlroy", "Justin Thomas", "Max Homa", "Xander Schauffele", "Sam Burns", "Will Zalatoris", "Viktor Hovland", "Patrick Cantlay"],
                    ["Jordan Spieth", "Collin Morikawa", "Sungjae Im", "Tony Finau", "Hideki Matsuyama", "Tom Kim", "Matt Fitzpatrick", "Cameron Young", "Tyrrell Hatton", "Kurt Kitayama"],
                    ["Tommy Fleetwood", "Justin Rose", "Adam Scott", "Billy Horschel", "Sahith Theegala", "Keegan Bradley", "Corey Conners", "Si Woo Kim", "Brian Harman", "Kyoung-Hoon Lee"],
                    ["Tiger Woods", "Min Woo Lee", "Keith Mitchell", "Francesco Molinari", "Fred Couples", "Kevin Kisner", "Gary Woodland", "Danny Willett", "Mackenzie Hughes", "Taylor Moore"],
                    ["Cameron Smith", "Dustin Johnson", "Brooks Koepka", "Louis Oosthuizen", "Patrick Reed", "Joaquin Niemann", "Abraham Ancer", "Bryson DeChambeau", "Thomas Pieters", "Mito Pereira"]
                ],
                draftPositions: [2, 10, 4, 6, 6]
            ),
            Gambler(
                name: "Kastor",
                wishPicks: [
                    ["Scottie Scheffler", "Jon Rahm", "Justin Thomas", "Rory McIlroy", "Max Homa", "Will Zalatoris", "Xander Schauffele", "Patrick Cantlay", "Viktor Hovland", "Sam Burns"],
                    ["Cameron Young", "Jordan Spieth", "Tony Finau", "Collin Morikawa", "Sungjae Im", "Hideki Matsuyama", "Matt Fitzpatrick", "Tom Kim", "Kurt Kitayama", "Tyrrell Hatton"],
                    ["Sahith Theegala", "Shane Lowry", "Jason Day", "Justin Rose", "Tommy Fleetwood", "Adam Scott", "Harris English", "Keegan Bradley", "Corey Conners", "Billy Horschel"],
                    ["Tiger Woods", "Min Woo Lee", "Keith Mitchell", "J.T. Poston", "Danny Willett", "Francesco Molinari", "Kevin Kisner", "Gary Woodland", "Bernhard Langer", "Zach Johnson"],
                    ["Cameron Smith", "Joaquin Niemann", "Dustin Johnson", "Patrick Reed", "Louis Oosthuizen", "Bryson DeChambeau", "Abraham Ancer", "Mito Pereira", "Brooks Koepka", "Bubba Watson"]
                ],
                draftPositions: [4, 6, 7, 3, 9]
            ),
            Gambler(
                name: "Chacho",
                wishPicks: [
                    ["Rory McIlroy", "Jon Rahm", "Scottie Scheffler", "Max Homa", "Will Zalatoris", "Patrick Cantlay", "Xander Schauffele", "Viktor Hovland", "Sam Burns", "Justin Thomas"],
                    ["Matt Fitzpatrick", "Cameron Young", "Jordan Spieth", "Sungjae Im", "Tyrrell Hatton", "Kurt Kitayama", "Tony Finau", "Tom Kim", "Collin Morikawa", "Hideki Matsuyama"],
                    ["Jason Day", "Justin Rose", "Shane Lowry", "Adam Scott", "Corey Conners", "Keegan Bradley", "Tommy Fleetwood", "Chris Kirk", "Si Woo Kim", "Harris English"],
                    ["Tiger Woods", "Kevin Kisner", "Francesco Molinari", "Cameron Champ", "Bernhard Langer", "Fred Couples", "Scott Stallings", "Zach Johnson", "Gary Woodland", "Mateo Fernandez de Oliveira"],
                    ["Cameron Smith", "Dustin Johnson", "Joaquin Niemann", "Brooks Koepka", "Louis Oosthuizen", "Bubba Watson", "Kevin Na", "Mito Pereira", "Abraham Ancer", "Patrick Reed"]
                ],
                draftPositions: [6, 4, 2, 10, 7]
            ),
            Gambler(
                name: "Pipe",
                wishPicks: [
                    ["Scottie Scheffler", "Rory McIlroy", "Jon Rahm", "Xander Schauffele", "Patrick Cantlay", "Max Homa", "Sam Burns", "Justin Thomas", "Will Zalatoris", "Viktor Hovland"],
                    ["Jordan Spieth", "Tony Finau", "Sungjae Im", "Cameron Young", "Tom Kim", "Collin Morikawa", "Tyrrell Hatton", "Hideki Matsuyama", "Matt Fitzpatrick", "Kurt Kitayama"],
                    ["Jason Day", "Corey Conners", "Tommy Fleetwood", "Tom Hoge", "Shane Lowry", "Russell Henley", "Adam Scott", "Chris Kirk", "Si Woo Kim", "Justin Rose"],
                    ["Min Woo Lee", "Keith Mitchell", "Taylor Moore", "Tiger Woods", "J.T. Poston", "Adam Svensson", "Adrian Meronk", "Danny Willett", "Gordon Sargent", "Gary Woodland"],
                    ["Cameron Smith", "Dustin Johnson", "Joaquin Niemann", "Abraham Ancer", "Brooks Koepka", "Louis Oosthuizen", "Thomas Pieters", "Patrick Reed", "Mito Pereira", "Bubba Watson"]
                ],
                draftPositions: [8, 2, 10, 1, 5]
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
