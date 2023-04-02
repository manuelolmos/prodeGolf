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
                for golfer in gambler.wishPicks[index] {
                    if golfersToPick.contains(golfer) {
                        gamblers = gamblers.map {
                            if $0.name == gambler.name {
                                $0.picks.append(golfer)
                            }
                            return $0
                        }
                        golfersToPick = golfersToPick.filter { $0 != golfer }
                        break
                    }
                }
            }
        }

        for gambler in gamblers {
            print("Gambler: \(gambler.name) has the following picks: \(gambler.picks)")
        }
    }
}
