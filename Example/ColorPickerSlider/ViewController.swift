//
//  ViewController.swift
//  ColorPickerSlider
//
//  Created by sarath on 11/09/2016.
//  Copyright (c) 2016 sarath. All rights reserved.
//

import UIKit
import ColorPickerSlider

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Sample view to display selected color.
        let selectedColorDisplayView = UIView(frame: CGRect(x: self.view.center.x,
                                                            y: self.view.center.x,
                                                            width: 50,
                                                            height: 50))
        selectedColorDisplayView.backgroundColor = UIColor.red
        self.view.addSubview(selectedColorDisplayView)


        // ColorPickerView initialisation
        let colorPickerframe = CGRect(x: 30,
                                      y: 30,
                                      width: self.view.frame.size.width - 60,
                                      height: 30)
        let colorPicker = ColorPickerView(frame: colorPickerframe)
        colorPicker.didChangeColor = { color in
            selectedColorDisplayView.backgroundColor = color
        }
        view.addSubview(colorPicker)
    }
}
