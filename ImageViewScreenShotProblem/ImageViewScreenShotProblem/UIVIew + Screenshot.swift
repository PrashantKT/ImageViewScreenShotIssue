//
//  UIVIew + Screenshot.swift
//  ImageViewScreenShotProblem
//
//  Created by Prashant Tukadiya on 19/04/24.
//

import UIKit


extension UIView {
    func takeSnapshot() -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: frame.size)
        let image = renderer.image { _ in drawHierarchy(in: bounds, afterScreenUpdates: true) }
      
        UIGraphicsEndImageContext()
        return image
    }
}
