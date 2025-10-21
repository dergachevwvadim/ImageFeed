//
//  ViewController.swift
//  ImageFeed
//
//  Created by User on 18.10.2025.
//

import UIKit

class ImagesListViewController: UIViewController {
    //MARK: IBOutlets
    
    @IBOutlet private var tableView: UITableView!
    
    //MARK: Any var/let
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
//        tableView.register(ImagesListCell.self,
//                           forCellReuseIdentifier: ImagesListCell.reuseIdentifier)
        
        
    }
}
//MARK: extensions
extension ImagesListViewController: UITableViewDataSource {
    //MARK: Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)
        
        guard let imageListCell = cell as? ImagesListCell else { return UITableViewCell() }
        
        configCell(for: imageListCell)
        
        return imageListCell
    }
    
}

extension ImagesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension ImagesListViewController {
    func configCell(for cell: ImagesListCell) {
        
    }
}
