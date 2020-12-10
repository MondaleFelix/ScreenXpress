//
//  ConfirmationVC.swift
//  ScreenXpress
//
//  Created by Mondale on 12/10/20.
//

import UIKit

class ConfirmationVC: UIViewController {

    let confirmationLabel = UILabel()
    let nameLabel = UILabel()
    let phoneLabel = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen

        configure()
    }

    
    private func configure(){
        
        view.addSubview(nameLabel)
        view.addSubview(phoneLabel)
        view.addSubview(confirmationLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        confirmationLabel.translatesAutoresizingMaskIntoConstraints = false

        confirmationLabel.adjustsFontSizeToFitWidth = true
        confirmationLabel.text = "Thank you for your request. We will reach out to you at"

        NSLayoutConstraint.activate([
            
            confirmationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            confirmationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            confirmationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            confirmationLabel.heightAnchor.constraint(equalToConstant: 45),

            nameLabel.topAnchor.constraint(equalTo: confirmationLabel.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabel.heightAnchor.constraint(equalToConstant: 45),
        
            phoneLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            phoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phoneLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            phoneLabel.heightAnchor.constraint(equalToConstant: 45),
        
            
        ])
        
    }
}

