//
//  CreateGamblerViewController.swift
//  ProdeGolf
//
//  Created by Manuel Olmos Gil on 02/04/2023.
//

import UIKit

protocol CreateGamblerViewControllerDelegate: AnyObject {
    func gamblerSaved(name: String, picks: [[String]], draftPositions: [Int])
}

class CreateGamblerViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var bucket1Golfer: UIButton!
    @IBOutlet weak var bucket2Golfer: UIButton!
    @IBOutlet weak var bucket3Golfer: UIButton!
    @IBOutlet weak var bucket4Golfer: UIButton!
    @IBOutlet weak var bucket5Golfer: UIButton!
    @IBOutlet weak var draftPositionsTextField: UITextField!

    private let defaultText = "Tap to select wish pick"
    private var picks = [[String]]()

    weak var delegate: CreateGamblerViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        picks.append([])
        picks.append([])
        picks.append([])
        picks.append([])
        picks.append([])
    }

    @IBAction func addGolferTUI(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "BucketSelectionViewController") as? BucketSelectionViewController {
            vc.delegate = self
            vc.bucketNumber = sender.tag
            present(vc, animated: true)
        }
    }

    @IBAction func saveGamblerTUI(_ sender: Any) {
        guard let name = nameTextField.text else {
            let alert = UIAlertController(title: "Name required", message: "You have created a gambler with no name", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true)
            return
        }
        var draftPositions = [Int]()
        if let positions = draftPositionsTextField.text {
            draftPositions = positions.components(separatedBy: " ").map {
                Int($0) ?? 0
            }
        }
        delegate?.gamblerSaved(name: name, picks: picks, draftPositions: draftPositions)
        dismiss(animated: true)
    }
}

extension CreateGamblerViewController: BucketSelectionViewControllerDelegate {

    func golfers(picks: [String], forBucket number: Int) {
        self.picks[number] = picks
        let text = picks.isEmpty ? defaultText : picks.joined(separator: ", ")
        if number == 0 {
            bucket1Golfer.setTitle(text, for: .normal)
        } else if number == 1 {
            bucket2Golfer.setTitle(text, for: .normal)
        } else if number == 2 {
            bucket3Golfer.setTitle(text, for: .normal)
        } else if number == 3 {
            bucket4Golfer.setTitle(text, for: .normal)
        } else if number == 4 {
            bucket5Golfer.setTitle(text, for: .normal)
        }
    }
}
