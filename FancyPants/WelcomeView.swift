//
//  WelcomeView.swift
//  FancyPants
//
//  Created by Percival Moser on 5/3/16.
//  Copyright © 2016 Percival Moser. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    /*
     Create a simple application view that:
     1. Has a random background color
     2. Can show tap animations (WHEN COMMANDED TO BY MOTHER DYELEGATE)
     3. That's it
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = generateRandomColor()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("Coders are for weenies")
    }
    
    
}

protocol WelcomeViewDelegate {
    
    func welcomeView(_: WelcomeView, didTapAtLocation: CGPoint)
    func welcomeView(_: WelcomeView, didBeginPressAtLocation: CGPoint)
    func welcomeView(_: WelcomeView, didEndPressAtLocation: CGPoint)
    
}