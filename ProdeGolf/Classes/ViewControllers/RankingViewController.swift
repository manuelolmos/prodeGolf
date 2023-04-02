//
//  ViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import UIKit

class RankingViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    private let ranking: [[String]] = DataGenerator().ranking

    func numberOfSections(in tableView: UITableView) -> Int {
        return ranking.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ranking[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GolferCell", for: indexPath)
        cell.textLabel?.text = ranking[indexPath.section][indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Bucket \(section+1)"
    }
}
