//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by User on 29.10.2025.
//

import UIKit

final class SingleImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return }
            imageView.image = image
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
    
}
