//
//  LoginVC.swift
//  ScreenXpress
//
//  Created by Mondale on 12/9/20.
//

import UIKit

class UserFormVC: UIViewController {

    let nameTextField = SXTextField(text: "Enter Name")
    let deviceTextField = SXTextField(text: "Device Type")
    let addressTextField = SXTextField(text: "Enter Address")
    let cellNumberTextField = SXTextField(text: "Enter Cell Number")
    let emailTextField = SXTextField(text: "Enter Email")
    let datesInput = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        configureTextFields()
        addCreateButton()
        title = "New Repair"
        
        

    }
    
    
    private func addCreateButton(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Request Repair", style: .done, target: self, action: #selector(createButtonPresed))
    }
    
    @objc func createButtonPresed(){
        let confirmationVC = ConfirmationVC()
        confirmationVC.nameLabel.text = self.nameTextField.text!
        confirmationVC.phoneLabel.text = self.cellNumberTextField.text!

        navigationController?.present(confirmationVC, animated: true)

    }


    
    private func configureTextFields(){
        view.addSubview(nameTextField)
        view.addSubview(deviceTextField)
        view.addSubview(addressTextField)
        view.addSubview(cellNumberTextField)
        view.addSubview(emailTextField)
        view.addSubview(datesInput)

        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        deviceTextField.translatesAutoresizingMaskIntoConstraints = false
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        cellNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        datesInput.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 45),

            deviceTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5),
            deviceTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            deviceTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            deviceTextField.heightAnchor.constraint(equalToConstant: 45),
            
            
            addressTextField.topAnchor.constraint(equalTo: deviceTextField.bottomAnchor, constant: 5),
            addressTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addressTextField.heightAnchor.constraint(equalToConstant: 45),
            
            emailTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 25),
            
            cellNumberTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5),
            cellNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cellNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            cellNumberTextField.heightAnchor.constraint(equalToConstant: 25),
            

  
            datesInput.topAnchor.constraint(equalTo: cellNumberTextField.bottomAnchor, constant: 5),
            datesInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            datesInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            datesInput.heightAnchor.constraint(equalToConstant: 45),

        ])
        
    }
    

    
}
