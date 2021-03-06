//
//  ImageTitleCollectionViewCell.swift
//  cksapp
//
//  Created by Bhupendra Singh on 7/2/16.
//  Copyright © 2016 Bhupendra Singh. All rights reserved.
//

import UIKit

class ImageTitleCollectionViewCell: BaseCollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topLeftLabel: UILabel!
    
    @IBOutlet weak var topRightLabel: UILabel!
    
    @IBOutlet weak var selectUnselectImageView: SelectUnselectImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    
    internal override class func cellID() -> String {
        return "ImageTitleCollectionViewCell"
    }
    
    override func initCommon() {
        super.initCommon()
        self.layer.cornerRadius = ConstantCornerRadius.Mid.rawValue
        self.layer.backgroundColor = ColorConstants.Black.color().colorWithAlphaComponent(0.9).CGColor
        self.imageView.contentMode = .ScaleAspectFill
        self.backgroundColor = ColorConstants.Clear.color()
        self.layer.shouldRasterize = YES
        self.layer.rasterizationScale = UIScreen.mainScreen().scale
        self.topLeftLabel.numberOfLines = 0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.imageView.image = nil
        self.topLeftLabel.text = nil
        self.topRightLabel.text = nil
        self.bottomLabel.text = nil
    }
    
    func configureFor(event : Event) -> Void {
        self.topRightLabel.text = nil
        self.topLeftLabel.text = event.title + "\n" + event.date.localizedStringMid()
        self.bottomLabel.text = event.detailDescription
        self.backgroundColor = ColorConstants.White.color()
        if let url = event.photos.last?.urlString {
            self.imageView.setImageFromUrl(url)
        }
        self.selectUnselectImageView.selected = event.userHasSelected
    }
    
}
