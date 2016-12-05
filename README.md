# ColorPickerSlider

[![CI Status](http://img.shields.io/travis/sarath/ColorPickerSlider.svg?style=flat)](https://travis-ci.org/sarath/ColorPickerSlider)
[![Version](https://img.shields.io/cocoapods/v/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)
[![License](https://img.shields.io/cocoapods/l/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)
[![Platform](https://img.shields.io/cocoapods/p/ColorPickerSlider.svg?style=flat)](http://cocoapods.org/pods/ColorPickerSlider)

ColorPickerSlider is a lightweight color picker library written in swift. User will be presented with a slider and on sliding, user can select required color. 


![sample_gif](https://github.com/sarath-vijay/ColorPickerSlider/blob/master/demo.gif)

## Requirements

- Xcode 8
- Swift 3
- iOS 10+

## Installation

### Using CocoaPods:

To integrate ColorPickerSlider into your Xcode project using CocoaPods, specify it in your Podfile:
```ruby
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod ’ColorPickerSlider’, ‘1.0.0'
end
```

Then, run the following command:
```bash
$ pod install
```

### Manually:

* Download ColorPickerSlider.
* Drag and drop ColorPickerSlider directory to your project
## Usage

For including color picker in your view, add the following code

```swift
let colorPickerframe = __REQUIRED_FRAME__
let colorPicker = ColorPickerView(frame: colorPickerframe)
colorPicker.colorChangeBlock = { color in
    //Use color and do the requied.
}
self.view.addSubview(colorPicker)
```

## Author

sarath, sarathvijayp@gmail.com

## License

ColorPickerSlider is available under the MIT license. See the LICENSE file for more info.
