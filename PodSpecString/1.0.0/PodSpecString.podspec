#
# Be sure to run `pod lib lint PodSpecString.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodSpecString'
  s.version          = '1.0.0'
  s.summary          = 'PodSpecString abort NSString handle'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/YMYSomnus/PodSpecString'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '731759575@qq.com' => 'yangmingyue713@jk.cn' }
  s.source           = { :git => 'https://github.com/YMYSomnus/PodSpecString.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.resource_bundles = {
  #   'PodSpecString' => ['PodSpecString/Assets/*.png']
  # }

  s.subspec 'NSString' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'NSString/**/*'
    ss.dependency 'MJExtension', '= 3.0.13'
    ss.resource = ['NSString/Resource/*']
    ss.library = 'z'
  end

  s.subspec 'NSAttributedString' do |as|
    as.ios.deployment_target = '7.0'
    as.source_files = 'NSAttributedString/**/*'
  end

# s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
