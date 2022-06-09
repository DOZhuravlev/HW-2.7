//
//  ViewController.swift
//  HW 2.7
//
//  Created by Zdrenko Zigich on 06.06.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let personListVC = navigationVC.topViewController as? PersonListViewController {
                personListVC.persons = personList
            } else if let sectionPersonListVC = navigationVC.topViewController as? SectionPersonListViewController {
                sectionPersonListVC.persons = personList
            }
        }
    }
}


