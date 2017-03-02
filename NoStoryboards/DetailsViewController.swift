//
//  DetailsViewController.swift
//  NoStoryboards
//
//  Created by Ronald Hernandez on 3/1/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var contactInfo: Contact? {
        didSet{
            guard let cont = contactInfo else {
                return 
            }

            contact = cont
        }
    }


    private let label: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()

    private var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        label.text = contact!.firstName + " " + contact!.lastName

        view.addSubview(label)

        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }


}
