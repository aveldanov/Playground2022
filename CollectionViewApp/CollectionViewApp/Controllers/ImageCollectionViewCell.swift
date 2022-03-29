//
//  ImageCollectionViewCell.swift
//  CollectionViewApp
//
//  Created by Anton Veldanov on 9/10/21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imageCache = NSCache<AnyObject, AnyObject>()
    
    func configure(with urlString: String){
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        
        if let imageCache = imageCache.object(forKey: url as AnyObject) as? UIImage{
            DispatchQueue.main.async {
                self.imageView.image = imageCache
            }
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            
            let imageCache = UIImage(data: data)
            
            DispatchQueue.main.async {
                self.imageView.image = imageCache
            }
            
        }.resume()
        
        
        
    }
    
    
    
    
}
