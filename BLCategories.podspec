#
# Be sure to run `pod lib lint BLCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLCategories'
  s.version          = '1.0.2'
  s.summary          = 'Collect common methods, classes to be used in project'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
I have worked on many projects, recognised a issue that developer must copy and paste common methods/classes if they want to use, but these methods/classes are the same, it is difficult a little bit. Why don't we create a folder which contains common methods/classes? This pod is created for this question.
                       DESC

  s.homepage         = 'https://github.com/b1nhle/BLCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Binh Le' => 'mlequocbinh@gmail.com' }
  s.source           = { :git => 'https://github.com/b1nhle/BLCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BLCategories/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'BLCategories' => ['BLCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
