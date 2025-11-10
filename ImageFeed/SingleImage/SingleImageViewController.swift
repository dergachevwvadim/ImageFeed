//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by User on 29.10.2025.
//

import UIKit

final class SingleImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    @IBAction private func didTapShareButton(_ sender: UIButton) {
        guard let image = image else { return }
        let showShare = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(showShare, animated: true)
    }
    @IBAction private func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
    
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return }
            imageView.image = image
            guard let image = image else { return }
            rescaleAndCenterImageInScrollView(image: image)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        guard let image = image else { return }
        rescaleAndCenterImageInScrollView(image: image)
        
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 1.25
    }
    
    private func rescaleAndCenterImageInScrollView(image: UIImage) {
        let minZoomScale = scrollView.minimumZoomScale
        let maxZoomScale = scrollView.maximumZoomScale
        view.layoutIfNeeded()
        let visibleRectSize = scrollView.bounds.size
        let imageSize = image.size
        let hScale = visibleRectSize.width / imageSize.width
        let vScale = visibleRectSize.height / imageSize.height
        let scale = min(maxZoomScale, max(minZoomScale, min(hScale, vScale)))
        scrollView.setZoomScale(scale, animated: false)
        scrollView.layoutIfNeeded()
        let newContentSize = scrollView.contentSize
        let x = (newContentSize.width - visibleRectSize.width) / 2
        let y = (newContentSize.height - visibleRectSize.height) / 2
        scrollView.setContentOffset(CGPoint(x: x, y: y), animated: true)
    }
}


extension SingleImageViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        let visibleRectSize = scrollView.bounds.size
        let newContentSize = scrollView.contentSize
        let x = (visibleRectSize.width - newContentSize.width) / 2
        let y = (visibleRectSize.height - newContentSize.height) / 2
        scrollView.contentInset = UIEdgeInsets(top: max(0, y), left: max(0, x), bottom: max(0, y), right: max(0, x))
    }
}
