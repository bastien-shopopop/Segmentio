//
//  BadgeView.swift
//
//
//  Created by Bastien on 18/03/2024.
//

import UIKit

class BadgeView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initState()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initState()
    }
    
    private func initState() {
        Bundle.main.loadNibNamed("BadgeView", owner: self, options: nil)
        addSubview(self.contentView)
        contentView.frame = bounds
        
        // Make the corners rounded
        self.layer.cornerRadius = min(self.frame.size.width, self.frame.size.height) / 2
        self.clipsToBounds = true
    }
    
    func setBadgeBackgroundColor(_ color: UIColor) {
        self.contentView.backgroundColor = color
    }
}
