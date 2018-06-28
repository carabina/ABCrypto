#
# Be sure to run `pod lib lint ABCrypto.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABCrypto'
  s.version          = '0.1.0'
  s.summary          = 'This pod help developers to encrypt/decrypt the NSData using CommonCrypto lib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = 'This pod help developers to encrypt/decrypt the NSData using CommonCrypto lib. Pod can be used in iOS applications which runs Objective-C, Swift or any of the private/public pods without bridging headers. Courtesy to Richard Warrender for the NSData extension.'

s.homepage         = 'https://github.com/abhilashpnayar/ABCrypto'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'abhilashpnayar' => 'abhilashpnayar@gmail.com' }
  s.source           = { :git => 'https://github.com/abhilashpnayar/ABCrypto.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ABCrypto/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ABCrypto' => ['ABCrypto/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
