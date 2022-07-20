//
//  PersonDetailsViewController.swift
//  PersonalList
//
//  Created by Yuliya Ten on 20.07.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "E-mail: \(person.email)"
       
    }

}
