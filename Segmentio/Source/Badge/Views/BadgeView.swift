//
//  BadgeView.swift
//
//
//  Created by Bastien on 18/03/2024.
//

import UIKit

class BadgeView: UIView {
    
    class func instanceFromNib() -> BadgeView {
        let nibName = "BadgeView"
        let podBundle = Bundle(for: self.classForCoder())
        
        if let bundleURL = podBundle.url(forResource: "Segmentio", withExtension: "bundle"), let bundle = Bundle(url: bundleURL) {
            let badgeView = UINib(nibName: nibName, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as! BadgeView
            badgeView.frame = CGRect(x: 0, y: 0, width: 7, height: 7) // Set frame size
            return badgeView
        }
        return BadgeView(frame: CGRect(x: 0, y: 0, width: 7, height: 7))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initState()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initState()
    }
    
    private func initState() {
        
        // Make the corners rounded
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    func setBadgeBackgroundColor(_ color: UIColor) {
        if let contentView =  self.subviews.first {
            contentView.backgroundColor = color
        }
        
    }
}
