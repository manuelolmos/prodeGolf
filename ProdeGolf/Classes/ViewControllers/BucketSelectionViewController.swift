//
//  BucketSelectionViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 02/04/2023.
//

import UIKit

protocol BucketSelectionViewControllerDelegate: AnyObject {
    func golfers(picks: [String], forBucket number: Int)
}

class BucketSelectionViewController: UIViewController {

    weak var delegate: BucketSelectionViewControllerDelegate?
    var bucketNumber: Int = 0
    private var golfers: [String] = [String]()
    private var selectedGolfers: [String] = [String]()

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bucketTitleLabel: UILabel!

    @IBAction func doneTUI(_ sender: Any) {
        delegate?.golfers(picks: selectedGolfers, forBucket: bucketNumber)
        dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bucketTitleLabel.text = "Bucket \(bucketNumber+1)"
        golfers = DataGenerator().ranking[bucketNumber]
        tableView.reloadData()
    }
}

extension BucketSelectionViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return golfers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GolferSelectionCell", for: indexPath)
        cell.textLabel?.text = golfers[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedGolfers.append(golfers[indexPath.row])
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let golfer = golfers[indexPath.row]
        selectedGolfers = selectedGolfers.filter { $0 != golfer }
    }
}
