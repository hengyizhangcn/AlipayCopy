#  Be sure to run `pod spec lint AlipayCopy.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  These will help people to find your library, and whilst it
#  can feel like a chore to fill in it's definitely to your advantage. The
#  summary should be tweet-length, and the description more in depth.
#

s.name         = "AlipayCopy"
s.version      = "1.0.0"
s.summary      = "A short description of AlipayCopy."
s.ios.deployment_target = "7.0"

s.requires_arc = true

s.homepage         = "https://github.com/hengyizhangcn/AlipayCopy.git"
s.license           = 'MIT'
s.author           = { 'hengyi.zhang' => 'hengyi.zhang@uama.com.cn' }
s.source           = { :git => "https://github.com/hengyizhangcn/AlipayCopy.git", :tag => "1.0.0" }

s.ios.deployment_target = '7.0'
s.framework = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion'
s.ios.libraries = 'c++', 'z'
s.vendored_frameworks = 'AlipayCopy/AlipaySDK.framework'
s.vendored_libraries = 'AlipayCopy/libcrypto.a', 'AlipayCopy/libssl.a'
s.source_files = 'AlipayCopy/*.{h,m}'
s.resources = ['AlipayCopy/*.{bundle}']

s.subspec 'openssl' do |ss|
ss.source_files = 'AlipayCopy/openssl/*.{h,m,c}'
end
s.subspec 'Util' do |ss|
ss.source_files = 'AlipayCopy/Util/*.{h,m}'
end
s.subspec 'Security' do |ss|
ss.source_files = 'AlipayCopy/Security/*.{h,m}'
ss.subspec 'GTMBase64' do |sss|
sss.source_files = 'AlipayCopy/Security/GTMBase64/*.{h,m}'
end
end

#s.dependency 'AFNetworking', '~> 3.0.4'

end

