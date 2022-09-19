//
//  SearchCell.swift
//  HW17
//
//  Created by Борис Киселев on 19.09.2022.
//

import Foundation
import UIKit

class SearchCell: UICollectionViewCell {
    
   static let identifier = "Custom Cell"
    
    //MARK: - Subview's
    
    var image: UIImageView = {
       let image = UIImageView()
       let picture = UIImage()
        image.image = picture
        image.layer.cornerRadius = 20
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        
        image.frame.size = CGSize(width: 50, height: 50)
        
        return image
    }()
    
  
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addingSubviews()
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup Hierarchy
    
    func addingSubviews() {
        contentView.addSubview(image)
     
    }
    
    //MARK: - Setup Layout
    
    func setupLayout() {
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 1).isActive = true
        image.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 1).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -1).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        

    }
}
