// Created on: Nov 2018
// Created by:  Brody MacNeil
// Created for: ICS3U
// This program convert persons level to percentage.
// this will be commented out when code moved to Xcode

import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let levelTextField = UITextField()
    let enterButton = UIButton()
    let showPercentageButton = UIButton()
    let answerLabel = UILabel()
    var gradeNumber : String = ""
    
    @objc func enterClicked() -> String {
        if let levelEntered : String = levelTextField.text! {
             if levelEntered == "R" {
                gradeNumber = "49"
             } else if levelEntered == "1-" {
                gradeNumber = "51"
            } else if levelEntered == "1" {
                gradeNumber = "55"
            } else if levelEntered == "1+" {
                gradeNumber = "58"
            } else if levelEntered == "2-" {
                gradeNumber = "61"
            } else if levelEntered == "2" {
                gradeNumber = "64"
            } else if levelEntered == "2+" {
                gradeNumber = "68"
            } else if levelEntered == "3-" {
                gradeNumber = "71"
            } else if levelEntered == "3" {
                gradeNumber = "74"
            } else if levelEntered == "3+" {
                gradeNumber = "78"
            } else if levelEntered == "4-" {
                gradeNumber = "83"
            } else if levelEntered == "4" {
                gradeNumber = "91"
            } else if levelEntered == "4+" {
                gradeNumber = "97"
            } else {
                answerLabel.text = "Invalid level."
            }
        } else {
            answerLabel.text = "You didnt enter a mark."
        }
        return gradeNumber
    }
    
    @objc func showPercentageClicked() {
        answerLabel.text = "You have \(gradeNumber)%."
    }
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter your level."
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        levelTextField.borderStyle = UITextField.BorderStyle.roundedRect
        levelTextField.placeholder = "Enter level"
        view.addSubview(levelTextField)
        levelTextField.translatesAutoresizingMaskIntoConstraints = false
        levelTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        levelTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        enterButton.setTitle("Enter", for: .normal)
        enterButton.setTitleColor(.blue, for: .normal)
        enterButton.titleLabel?.textAlignment = .center
        enterButton.addTarget(self, action: #selector(enterClicked), for: .touchUpInside)
        view.addSubview(enterButton)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: levelTextField.trailingAnchor, constant: 20).isActive = true
        
        showPercentageButton.setTitle("Show", for: .normal)
        showPercentageButton.setTitleColor(.blue, for: .normal)
        showPercentageButton.titleLabel?.textAlignment = .center
        showPercentageButton.addTarget(self, action: #selector(showPercentageClicked), for: .touchUpInside)
        view.addSubview(showPercentageButton)
        showPercentageButton.translatesAutoresizingMaskIntoConstraints = false
        showPercentageButton.bottomAnchor.constraint(equalTo: levelTextField.bottomAnchor).isActive = true
        showPercentageButton.leadingAnchor.constraint(equalTo: enterButton.trailingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: showPercentageButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
