#
# Be sure to run `pod lib lint KMUIMaker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KMUIMaker'
  s.version          = '0.0.1'
  s.summary          = '使用类似Masonry链式编程的方式初始化UIView、UIButton、UILabel、UIScrollview、UITextView、UITabelView...'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
      使用类似Masonry链式编程的方式初始化UIView、UIButton、UILabel、UIScrollview、UITextView、UITabelView...
      支持pod
                       DESC

  s.homepage         = 'https://github.com/hkm5558/KMUIMaker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hkm5558' => '15112600181@163.com' }
  s.source           = { :git => 'https://github.com/hkm5558/KMUIMaker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KMUIMaker/Classes/KMUIMakerHeader.h'
  s.public_header_files = 'KMUIMaker/Classes/KMUIMakerHeader.h'

    s.subspec 'KMUIMaker' do |ss|
    ss.source_files = 'KMUIMaker/Classes/KMUIMaker/*.{h,m}'
    ss.public_header_files = 'KMUIMaker/Classes/KMUIMaker/*.h'
  end

    s.subspec 'KMUIMakerCategory' do |ss|
    ss.dependency 'KMUIMaker/KMUIMaker'
    ss.source_files = 'KMUIMaker/Classes/KMUIMakerCategory/*.{h,m}'
    ss.public_header_files = 'KMUIMaker/Classes/KMUIMakerCategory/*.h'

  end
end
