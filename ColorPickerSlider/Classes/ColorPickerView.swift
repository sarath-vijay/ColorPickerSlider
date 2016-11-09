//
//  ColorPickerView.swift
//  TestColorPicker
//
//  Created by Sarath Vijay on 20/10/16.
//  Copyright © 2016 jango. All rights reserved.
//

import UIKit

typealias ColorChangeBlock = (_ color : UIColor?) -> Void

class ColorPickerView: UIView {

    //MARK:- Open constant
    //MARK:-
    
    open var colorPickerSliderHeight : CGFloat = 2.0 //Min value

    //MARK:- Private variables
    //MARK:-
    fileprivate var currentHueValue: CGFloat = 0.0
    fileprivate var currentSliderColor: UIColor = UIColor.red
    fileprivate var hueImage: UIImage!
    fileprivate var slider : UISlider!

    //MARK:- Private constant
    //MARK:-
    fileprivate let defaultUISliderHeight : CGFloat = 31
    fileprivate let minColorPickerSliderHeight : CGFloat = 2

    //MARK:- Open variables
    //MARK:-
    open var colorChnageBlock : ColorChangeBlock?

    //MARK:- Override Functions
    //MARK:-
    override open func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.clear
        update()
    }

    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        if slider == nil {
            let sliderRect = CGRect(x: rect.origin.x, y:  (rect.size.height - defaultUISliderHeight) * 0.5, width: rect.width, height: defaultUISliderHeight)
            slider = UISlider(frame: sliderRect)
            slider.setValue(0, animated: false)
            slider.addTarget(self, action: #selector(onSliderValueChange), for: UIControlEvents.valueChanged)
            slider.minimumTrackTintColor = UIColor.clear
            slider.maximumTrackTintColor = UIColor.clear
            let heigthForSliderImage = max(colorPickerSliderHeight, minColorPickerSliderHeight)
            let sliderImageRect : CGRect = CGRect(x: rect.origin.x, y: (rect.size.height - heigthForSliderImage) * 0.5, width: rect.width, height: heigthForSliderImage)
            if hueImage != nil {
                hueImage.draw(in: sliderImageRect)
            }
            self.addSubview(slider)
        }
    }

    //MARK:- Internal Functions
    //MARK:-
    internal func onSliderValueChange(slider : UISlider) {
        currentHueValue = CGFloat(slider.value)
        currentSliderColor = UIColor(hue: currentHueValue, saturation: 1, brightness: 1, alpha: 1)
        self.colorChnageBlock?(currentSliderColor)
    }
}

fileprivate extension ColorPickerView {

    func update() {
        if hueImage == nil {
            let heigthForSliderImage = max(colorPickerSliderHeight, minColorPickerSliderHeight)
            let size : CGSize = CGSize(width: self.frame.width, height: heigthForSliderImage)
            hueImage = generateHUEImage(size)
        }
    }

    func generateHUEImage(_ size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let heigthForSliderImage = max(colorPickerSliderHeight, minColorPickerSliderHeight)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIBezierPath(roundedRect: rect, cornerRadius: heigthForSliderImage * 0.5).addClip()
        for x: Int in 0 ..< Int(size.width) {
            UIColor(hue: CGFloat(CGFloat(x) / size.width), saturation: 1.0, brightness: 1.0, alpha: 1.0).set()
            let temp = CGRect(x: CGFloat(x), y: 0, width: 1, height: size.height)
            UIRectFill(temp)
        }
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

