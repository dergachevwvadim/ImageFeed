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
        
        let profileImage = UIImage(named: "avatar")
        let avatarImageView = UIImageView(image: profileImage)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarImageView)
        
        let usernameLabel = UILabel()
        view.addSubview(usernameLabel)
        usernameLabel.text = "Екатерина Новикова"
        usernameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.textColor = UIColor(named: "YP White (iOS)")
        
        let loginNameLabel = UILabel()
        view.addSubview(loginNameLabel)
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.font = .systemFont(ofSize: 13, weight: .regular)
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        loginNameLabel.textColor = UIColor(named: "YP Gray (iOS)")
        
        let descriptionLabel = UILabel()
        view.addSubview(descriptionLabel)
        descriptionLabel.text = "Hello world!"
        descriptionLabel.font = .systemFont(ofSize: 13, weight: .regular)
        descriptionLabel.textColor = UIColor(named: "YP White (iOS)")
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let logoutButton = UIButton.systemButton(with: UIImage(named: "exitButton")!,
                                                 target: self,
                                                 action: #selector(didTapLogoutButton))
        logoutButton.tintColor = .red
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            avatarImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            
            loginNameLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8),
            loginNameLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: usernameLabel.leadingAnchor),
            
            logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
