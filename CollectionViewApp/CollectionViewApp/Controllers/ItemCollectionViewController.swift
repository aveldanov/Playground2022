//
//  ItemCollectionViewController.swift
//  CollectionViewApp
//
//  Created by Anton Veldanov on 9/10/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class ItemCollectionViewController: UICollectionViewController {

    
    let url = URL(string: "https://api.unsplash.com/search/photos?page=1&query=office&client_id=_ZclMdS6WQFCW5tqJnkX2OpZGLqpO4Y0pLl6icUxcWU")!
    
    var loadedImages: [ResultResponse] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        APICaller.shared.fetchImages(url: url) { result in
            switch result{
            case .success(let images):
                self.loadedImages = images
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            case .failure(_):
                break
            
            }
        }
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return loadedImages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell else{
            fatalError("no cell")
        }
        
        let imageURLString = loadedImages[indexPath.row].urls.full
        
        cell.configure(with: imageURLString)
    
        return cell
    }

    
    
    
  
}


extension ItemCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/3, height: view.frame.width/3)
    }
    
    
}
