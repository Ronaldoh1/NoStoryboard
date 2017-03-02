//
//  ViewController.swift
//  NoStoryboards
//
//  Created by Ronald Hernandez on 2/28/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let redButton: UIButton = {
        let bttn = UIButton()
        bttn.setTitle("Tap", for: .normal)
        bttn.backgroundColor = .red
        bttn.translatesAutoresizingMaskIntoConstraints = false
        bttn.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        return bttn
    }()

    private let contact = Contact(firstName: "Pete", lastName: "Yorke")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .blue

        view.addSubview(redButton)

        redButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        redButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

    @objc private func handleTap() {
        let detailsVC = DetailsViewController(nibName: nil, bundle: nil)
        detailsVC.contactInfo = contact
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }

}

