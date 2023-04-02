//
//  Prode.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import Foundation

class Prode: NSObject {

    private var gamblers: [Gambler]
    private let draft: [BucketSelection]

    override init() {
        let generator = DataGenerator()
        gamblers = generator.generateGamblers()
        draft = generator.generateDraft(gamblers: gamblers)
    }

    func process() {
        for (index, bucket) in draft.enumerated() {
            var golfersToPick = bucket.golfers
            for gambler in bucket.gamblers {
                var golferPicked = false
                for golfer in gambler.wishPicks[index] {
                    if golfersToPick.contains(golfer) {
                        golfersToPick = pick(golfer: golfer, from: golfersToPick, for: gambler)
                        golferPicked = true
                        break
                    }
                }
                if !golferPicked, let nextGolfer = golfersToPick.first {
                    golfersToPick = pick(golfer: nextGolfer, from: golfersToPick, for: gambler)
                }
            }
        }

        for gambler in gamblers {
            print("Gambler: \(gambler.name) has the following picks: \(gambler.picks)")
        }
    }

    private func pick(golfer: String, from golfersToPick: [String], for gambler: Gambler) -> [String] {
        gamblers = gamblers.map {
            if $0.name == gambler.name {
                $0.picks.append(golfer)
            }
            return $0
        }
        return golfersToPick.filter { $0 != golfer }
    }
}
