//
//  ImageCache.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

final class ImageCache {
    // MARK: Private properties
    private lazy var queue = DispatchQueue(label: Self.queueLabel, qos: .userInteractive, attributes: .concurrent, autoreleaseFrequency: .inherit)
    private static let queueLabel: String = "com.swiftPokedex.ios.imageDownload.queue"
    private let cache = NSCache<NSURL, UIImage>()
    
    // MARK: - Public properties
    static let `default` = ImageCache()
    
    // MARK: - Init
    private init() {}
    
    // MARK: - Public functions
    func loadImage(from urlString: String, item: AnyHashable, completion: @escaping (AnyHashable, UIImage?) -> Swift.Void) {
        guard let url = NSURL(string: urlString) else { fatalError("URL couldn't be created. This should never happen!") }
        
        if let cachedImage = cache.object(forKey: url) {
            DispatchQueue.main.async { completion(item, cachedImage) }
        } else {
            queue.async {
                do {
                    let data = try Data(contentsOf: url as URL)
                    let image = UIImage(data: data)
                    if let image = image { self.cache.setObject(image, forKey: url) }
                    DispatchQueue.main.async { completion(item, image) }
                } catch {
                    DispatchQueue.main.async { completion(item, nil) }
                }
            }
        }
    }
}
