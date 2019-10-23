//
//  View.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit

class View: UIView {

    /// Indicating if keyboard should be closed on touch
    var closeKeyboardOnTouch = true

    /// Initialize an instance and calls required methods
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        guard let setupableView = self as? ViewSetupable else { return }
        setupableView.setupView()
    }

    /// - SeeAlso: NSCoding.init?(coder:)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// - SeeAlso: UIView.touchesBegan()
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if closeKeyboardOnTouch {
            endEditing(true)
        }
    }
}

