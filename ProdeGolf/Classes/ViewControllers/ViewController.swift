//
//  ViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 01/04/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    private let prode = Prode()

    override func viewDidLoad() {
        super.viewDidLoad()
        prode.process()
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prode.gamblers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GamblerCell", for: indexPath)
        let gambler = prode.gamblers[indexPath.row]
        cell.textLabel?.text = "Gambler: \(gambler.name) \nPicks: \(gambler.picks.joined(separator: ", "))"
        cell.textLabel?.numberOfLines = 0
        return cell
    }
}
