//
//  ResultViewController.swift
//  My First Personal Quiz
//
//  Created by Кирилл Батманов on 11.10.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var peopleTypeLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
        
    }
    
    private func updateResult() {
        var frequencyOfPeople: [People : Int] = [:]
        let peoples = answersChosen.map{ $0.people }
        
        for people in peoples {
            if let peopleTypeCount = frequencyOfPeople[people] {
                frequencyOfPeople.updateValue(peopleTypeCount + 1, forKey: people)
            } else {
                frequencyOfPeople[people] = 1
            }
        }
        
        let sortedFrequencyOfPeople = frequencyOfPeople.sorted { $0.value > $1.value }
        guard let mostFrequencyOfPeople = sortedFrequencyOfPeople.first?.key else { return }
        
        updateUI(with: mostFrequencyOfPeople)
    }
    
    private func updateUI(with people: People) {
        
        peopleTypeLabel.text = "Вы - \(people.rawValue)"
        
    }
}
