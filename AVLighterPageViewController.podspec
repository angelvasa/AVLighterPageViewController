#
#  Be sure to run `pod spec lint AVLighterPageViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |spec|
spec.name         = 'AVLighterPageViewController'
spec.version      = '0.3'
spec.license      = { :type => 'MIT' }
spec.homepage     = 'https://github.com/angelvasa/AVLighterPageViewController'
spec.authors      = { 'Angel Vasa' => 'vasaangel91@gmail.com' }
spec.summary      = "PageViewController's' lighter delegate & datasoucre class which will handle all the mess for you"
spec.source       = { :git => "https://github.com/angelvasa/AVLighterPageViewController.git", :tag => "0.3" }
spec.source_files = "AVLighterPageComponent", "AVLighterPageComponent/*.{h,m}"
end

