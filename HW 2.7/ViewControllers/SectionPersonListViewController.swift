//
//  SecondPersonListViewController.swift
//  HW 2.7
//
//  Created by Zdrenko Zigich on 06.06.2022.
//

import UIKit

class SectionPersonListViewController: UITableViewController {

    var persons: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionID", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        
        return cell
    }
}
