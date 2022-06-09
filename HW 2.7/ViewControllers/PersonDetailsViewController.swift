//
//  PersonDetailsViewController.swift
//  HW 2.7
//
//  Created by Zdrenko Zigich on 26.05.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
        
    }
}
