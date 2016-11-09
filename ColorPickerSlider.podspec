#
# Be sure to run `pod lib lint ColorPickerSlider.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ColorPickerSlider'
  s.version          = '0.1.0'
  s.summary          = 'A subclass of UIView wich privide a color picker slider for user.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: This CocoaPods provide a color picker slider for user and user can move the slider point to required color position. A callback block is invoked during the slider position chang and the selected color value will be available as a param in callback block.
                       DESC

  s.homepage         = 'https://github.com/<sarath-vijay>/ColorPickerSlider'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sarath' => 'sarathvijayp@gmail.com' }
  s.source           = { :git => 'https://github.com/<sarath-vijay>/ColorPickerSlider.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ColorPickerSlider/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ColorPickerSlider' => ['ColorPickerSlider/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
