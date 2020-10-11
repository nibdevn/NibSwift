//
//  UIScrollView+Ex.swift
//  Han
//
//  Created by 마이셀럽스 on 2020/09/07.
//  Copyright © 2020 마이셀럽스. All rights reserved.
//

import Foundation
import UIKit

extension UIScrollView {
    
    public func resetScrollPositionToTop(animated: Bool) {
        setContentOffset(CGPoint(x: -contentInset.left, y: -contentInset.top), animated: animated)
    }
}
