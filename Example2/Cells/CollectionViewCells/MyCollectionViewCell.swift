//
//  MyCollectionViewCell.swift
//  Example2
//
//  Created by Gevorg Hovhannisyan on 30.10.21.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    //MARK: - ID
    static let id = "MyCollectionViewCell"
    
    //MARK: - @IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: - LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
}

//MARK: - Remote ImageURL
extension UIImageView {
    
    func load(url: URL){
        DispatchQueue.global().async {
            [weak self] in if let data = try? Data(contentsOf: url){
                if let imageView = UIImage(data: data){
                    DispatchQueue.main.async {
                        self?.image = imageView
                    }
                }
            }
        }
    }
}
