//
//  StringListViewController.swift
//  Xcode26UIKitSample
//
//  Created by koogawa on 2025/06/11.
//

import UIKit

class StringListViewController: UITableViewController {
    let items = ["Apple", "Banana", "Orange", "Grape", "Lemon", "Apple", "Banana", "Orange", "Grape", "Lemon", "Apple", "Banana", "Orange", "Grape", "Lemon", "Apple", "Banana", "Orange", "Grape", "Lemon", "Apple", "Banana", "Orange", "Grape", "Lemon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        // Custom grouping

        let doneButton = UIBarButtonItem(image: UIImage(systemName: "checkmark"))
        // Tint color and style
        let flagButton = UIBarButtonItem(image: UIImage(systemName: "flag.fill"))
        flagButton.tintColor = .systemOrange
        flagButton.style = .prominent
        let folderButton = UIBarButtonItem(image: UIImage(systemName: "folder"))
        let infoButton = UIBarButtonItem(image: UIImage(systemName: "info.circle"))
        let shareButton = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"))
        let selectButton = UIBarButtonItem(title: "Select")

        navigationItem.rightBarButtonItems = [
            doneButton,
            flagButton,
            folderButton,
            infoButton,
            .fixedSpace(0),
            shareButton,
            selectButton
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
