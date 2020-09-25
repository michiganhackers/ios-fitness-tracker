//
//  StartRunButton.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/10/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class StartRunButton: UIButton {
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeLayout()
    }
    
    private func initializeLayout() {
        backgroundColor = UIColor(red: 221/255, green: 255/255, blue: 247/255, alpha: 1)
        setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        // This makes the button circular
        layer.cornerRadius = frame.width / 2
    }
}
