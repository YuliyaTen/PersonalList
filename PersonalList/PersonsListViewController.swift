//
//  PersonsListViewController.swift
//  PersonalList
//
//  Created by Yuliya Ten on 20.07.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    var personsList = Person.getPersonsList()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)
        let list = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = list.fullName
        content.image = UIImage(named: list.title)
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    


   
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }


}
