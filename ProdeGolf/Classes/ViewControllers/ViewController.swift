//
//  ViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let prode = Prode()
        prode.process()
        prode.showPicks()
    }
}

