//
//  RootTableVC.swift
//  Swag
//
//  Created by Matt Deuschle on 7/15/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class RootTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 300
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "rootTableCell", for: indexPath) as? RootTableCell else {
            return UITableViewCell()
        }
        return cell
    }
}
