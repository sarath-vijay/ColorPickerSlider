# ColorPickerSlider

[![CI Status](http://img.shields.io/travis/sarath/ColorPickerSlider.svg?style=flat)](https://travis-ci.org/sarath/ColorPickerSlider)
[![Version](https://img.shields.io/cocoapods/v/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)
[![License](https://img.shields.io/cocoapods/l/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)
[![Platform](https://img.shields.io/cocoapods/p/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)

ColorPickerSlider is a lightweight color picker library written in swift. User will be presented with a slider and on sliding, user can select required color. 

## Requirements

- Xcode 8
- Swift 3
- iOS 10+

## Installation

ColorPickerSlider is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ColorPickerSlider"
```

## Usage

For including color picker in your view, add the following code

let colorPickerframe = __REQUIRED_FRAME__
let colorPicker = ColorPickerView(frame: colorPickerframe)
colorPicker.colorChangeBlock = { color in
    //Use color and do the requied.
}
self.view.addSubview(colorPicker)


## Author

sarath, sarathvijayp@gmail.com

## License

ColorPickerSlider is available under the MIT license. See the LICENSE file for more info.
