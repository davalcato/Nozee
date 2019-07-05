//
//  PageCell.swift
//  Nozee
//
//  Created by Daval Cato on 7/4/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .yellow
        return iv
    }()
    
    func setupViews() {
        backgroundColor = .blue
        
        addSubview(imageView)
        imageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

































