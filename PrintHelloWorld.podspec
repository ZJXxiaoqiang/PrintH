#
# Be sure to run `pod lib lint PrintHelloWorld.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PrintHelloWorld'
  s.version          = '0.0.2'
  s.summary          = 'A short description of PrintHelloWorld.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ZJXxiaoqiang/PrintH'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '569099804@qq.com' => 'gaoxinqiang@58.com' }
  s.source           = { :git => 'https://github.com/ZJXxiaoqiang/PrintH.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = "9.0"
  s.source_files = 'PrintHelloWorld/Classes/**/*'
  
   s.resource_bundles = {
     'PrintHelloWorld' => ['PrintHelloWorld/Assets/*']
   }

   s.public_header_files = 'Pod/Classes/ABC/*.h'
   s.frameworks = 'UIKit'
   s.dependency 'Masonry'
end
