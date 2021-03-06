//
//  ViewController.swift
//  Werdd
//
//  Created by Eric Tu on 3/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    let appTitle : UILabel = {
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "Werdd."
        myLabel.textAlignment = .left
        myLabel.numberOfLines = 0
        myLabel.textColor = .black
        myLabel.font = myLabel.font.withSize(30)
        return myLabel
    }()
    
    let wordCardView : UIView = {
        let wordCardView = UIView()
        wordCardView.translatesAutoresizingMaskIntoConstraints = false
        wordCardView.backgroundColor = .systemBlue
        return wordCardView
    }()
    
    let wordTitle : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "dongle"
        label.font = label.font.withSize(20)
        return label
    }()
    
    let wordDefinition : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "a hardware device, paired with a licensed copy of a software program, that must be plugged into a computer to authorize every use of the software"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let partOfSpeech : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "noun"
        return label
    }()
    
    let wordRefreshButton : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("R", for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(handleRefreshButtonPress), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleRefreshButtonPress() {
        print("button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        self.view.addSubview(appTitle)
        
        self.view.addSubview(wordCardView)
        
        self.wordCardView.addSubview(wordTitle)
        self.wordCardView.addSubview(partOfSpeech)
        self.wordCardView.addSubview(wordDefinition)
        self.wordCardView.addSubview(wordRefreshButton)
        
        self.wordRefreshButton.addTarget(self, action: #selector(handleRefreshButtonPress), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            appTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            appTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            appTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            appTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            wordCardView.topAnchor.constraint(equalTo: appTitle.bottomAnchor,constant: 10),
            wordCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            wordCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            wordCardView.heightAnchor.constraint(equalToConstant: 200),
            wordTitle.leadingAnchor.constraint(equalTo: wordCardView.leadingAnchor, constant: 10),
            wordTitle.topAnchor.constraint(equalTo: wordCardView.topAnchor, constant: 10),
            wordTitle.heightAnchor.constraint(equalToConstant: 30),
            partOfSpeech.leadingAnchor.constraint(equalTo: wordTitle.trailingAnchor,constant: 10),
            partOfSpeech.heightAnchor.constraint(equalToConstant: 20),
            partOfSpeech.topAnchor.constraint(equalTo: wordCardView.topAnchor, constant: 15),
            partOfSpeech.bottomAnchor.constraint(equalTo: wordTitle.bottomAnchor, constant: 0),
            wordDefinition.topAnchor.constraint(equalTo: wordTitle.bottomAnchor, constant: 20),
            wordDefinition.leadingAnchor.constraint(equalTo: wordCardView.leadingAnchor, constant: 10),
            wordDefinition.trailingAnchor.constraint(equalTo: wordCardView.trailingAnchor, constant: -10),
            wordDefinition.bottomAnchor.constraint(equalTo: wordCardView.bottomAnchor, constant: -10),
            wordRefreshButton.bottomAnchor.constraint(equalTo: wordCardView.bottomAnchor, constant: -5),
            wordRefreshButton.rightAnchor.constraint(equalTo: wordCardView.rightAnchor, constant: -5),
            wordRefreshButton.widthAnchor.constraint(equalToConstant: 50),
            wordRefreshButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

