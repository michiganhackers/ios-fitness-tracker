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
        // TODO: Fix the background color — it looks pretty ugly.
        backgroundColor = .yellow
        
        // TODO: Change the title color with setTitleColor(color:for:)
        setTitleColor(.blue, for: UIControl.State.normal)
        
        // TODO: Change the titleLabel's font to be bold and a bigger size
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 60)
        
        // This makes the button circular
        layer.cornerRadius = frame.width / 2
    }
}
