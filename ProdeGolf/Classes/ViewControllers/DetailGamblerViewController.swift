//
//  DetailGamblerViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 02/04/2023.
//

import UIKit

class DetailGamblerViewController: UIViewController {

    var gambler: Gambler?
    @IBOutlet weak var gamblerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let gambler = self.gambler {
            gamblerLabel.text = "\(gambler.name) \nPicks: \(gambler.picks.joined(separator: ","))\nDraft positions: \(gambler.draftPositions)"
        }
    }
}
