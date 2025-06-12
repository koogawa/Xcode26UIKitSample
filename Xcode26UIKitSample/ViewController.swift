//
//  ViewController.swift
//  Xcode26UIKitSample
//
//  Created by koogawa on 2025/06/11.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarMinimizeBehavior = .onScrollDown

        let stringListVC = StringListViewController()
        stringListVC.title = "List"
        stringListVC.tabBarItem = UITabBarItem(title: "List", image: nil, tag: 0)
        let firstVC = UINavigationController(rootViewController: stringListVC)

        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .systemGreen
        secondVC.tabBarItem = UITabBarItem(title: "Green", image: nil, tag: 1)

        self.viewControllers = [firstVC, secondVC]

        // UITabAccessory
        let label = UILabel()
        label.text = "UITabAccessory!"
        label.textAlignment = .center
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.sizeToFit()
        let accessory = UITabAccessory(contentView: label)
        self.bottomAccessory = accessory
    }
}

