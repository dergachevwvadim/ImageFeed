//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by User on 23.10.2025.
//

import UIKit

class ProfileViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var loginNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    //MARK: IBActions
    @IBAction func didTapLogoutButton() {
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
