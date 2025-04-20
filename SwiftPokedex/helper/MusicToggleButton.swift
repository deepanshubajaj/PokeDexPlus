//
//  MusicToggleButton.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Foundation
import UIKit

class MusicToggleButton: UIButton {
    static let shared = MusicToggleButton()
    
    private var muteImage: UIImage?
    private var unmuteImage: UIImage?
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        setupImages()
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupImages()
        setupButton()
    }
    
    private func setupImages() {
        if #available(iOS 13.0, *) {
            muteImage = UIImage(systemName: "speaker.slash.fill")
            unmuteImage = UIImage(systemName: "speaker.wave.2.fill")
        } else {
            // Fallback images
            let originalMuteImage = UIImage(named: "unmuteIcon")
            let originalUnmuteImage = UIImage(named: "muteIcon")
            
            let imageSize = CGSize(width: 20, height: 20)
            
            muteImage = originalMuteImage?.resized(to: imageSize)
            unmuteImage = originalUnmuteImage?.resized(to: imageSize)
        }
    }
    
    private func setupButton() {
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.filled()
            config.baseBackgroundColor = .gray
            config.baseForegroundColor = .white
            config.cornerStyle = .capsule
            config.image = MusicManager.shared.isMuted
            ? UIImage(systemName: "speaker.slash.fill")
            : UIImage(systemName: "speaker.wave.2.fill")
            config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 16, weight: .regular)
            config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
            self.configuration = config
        } else {
            // Fallback for iOS 14 and below
            updateIcon()
            tintColor = .white
            backgroundColor = .gray
            layer.cornerRadius = 22
            clipsToBounds = true
        }
        
        addTarget(self, action: #selector(toggleMusic), for: .touchUpInside)
    }
    
    
    // MARK: - Helper Function to Add the Music Button to Any ViewController
    static func addMusicButton(to viewController: UIViewController) {
        let musicButton = MusicToggleButton.shared
        musicButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add music button to the view controller's navigation bar
        let musicButtonItem = UIBarButtonItem(customView: musicButton)
        viewController.navigationItem.rightBarButtonItem = musicButtonItem
    }
    
    
    @objc private func toggleMusic() {
        MusicManager.shared.toggleMute()
        updateIcon()
    }
    
    private func updateIcon() {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.image = MusicManager.shared.isMuted
            ? UIImage(systemName: "speaker.slash.fill")
            : UIImage(systemName: "speaker.wave.2.fill")
            self.configuration = config
        } else {
            let image = MusicManager.shared.isMuted ? muteImage : unmuteImage
            setImage(image, for: .normal)
        }
    }
    
}

extension UIImage {
    func resized(to size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, self.scale)
        self.draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage?.withRenderingMode(.alwaysTemplate)
    }
}
