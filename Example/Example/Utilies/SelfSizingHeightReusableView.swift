//
//  SelfSizingHeightReusableView.swift
//  CAVA
//
//  Created by Illya Bakurov on 2019-04-02.
//  Copyright © 2019 Royal Bank of Canada. All rights reserved.
//

import UIKit

class SelfSizingHeightReusableView: UICollectionReusableView {
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
    {
        let attr: UICollectionViewLayoutAttributes = layoutAttributes.copy() as! UICollectionViewLayoutAttributes
        
        var newFrame = attr.frame
        self.frame = newFrame
        
        self.setNeedsLayout()
        self.layoutIfNeeded()
        
        let desiredHeight: CGFloat = systemLayoutSizeFitting(UIView.layoutFittingCompressedSize, withHorizontalFittingPriority: .required, verticalFittingPriority: .defaultLow).height
        newFrame.size.height = desiredHeight
        attr.frame = newFrame
        return attr
    }
    
}
