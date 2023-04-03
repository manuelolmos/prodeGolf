//
//  ProdeViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 02/04/2023.
//

import UIKit

class ProdeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    private var gamblers: [Gambler] = []

    @IBAction func proceedToDraftTUI(_ sender: Any) {
        if gamblers.isEmpty {
            gamblers = DataGenerator().generateGamblers()
        }
        let prode = Prode(gamblers: gamblers)
        prode.process()
        tableView.reloadData()
    }

    @IBAction func createGambler(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "CreateGamblerViewController") as? CreateGamblerViewController {
            vc.delegate = self
            present(vc, animated: true)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamblers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GamblerCell", for: indexPath)
        cell.textLabel?.text = gamblers[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailGamblerViewController") as? DetailGamblerViewController {
            vc.gambler = gamblers[indexPath.row]
            present(vc, animated: true)
        }
    }
}

extension ProdeViewController: CreateGamblerViewControllerDelegate {
    func gamblerSaved(name: String, picks: [[String]], draftPositions: [Int]) {
        let gambler = Gambler(name: name, wishPicks: picks, draftPositions: draftPositions)
        gamblers.append(gambler)
        tableView.reloadData()
    }
}
