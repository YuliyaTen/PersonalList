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
        tableView.rowHeight = 80

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
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
  
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = personsList[indexPath.row]
    }
}
