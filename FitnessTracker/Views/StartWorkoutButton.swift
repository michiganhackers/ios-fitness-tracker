//
//  StartWorkoutButton.swift
//  FitnessTracker
//
//  Created by Thomas Smith on 9/10/20.
//  Copyright © 2020 Michigan Hackers. All rights reserved.
//

import UIKit

class StartWorkoutButton: UIButton {
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
        backgroundColor = .green
        
        // TODO: Change the title color with setTitleColor(color:for:)
        
        // TODO: Change the titleLabel's font to be bold and a bigger size
        
        // This makes the button circular
        layer.cornerRadius = frame.width / 2
    }
}
