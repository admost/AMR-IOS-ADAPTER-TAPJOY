Pod::Spec.new do |s|
  s.name             = 'AMRAdapterTapjoy'
  s.version          = '13.3.0.0'
  s.license          = { :type => 'Copyrght', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Tapjoy adapter for AMR SDK.'
  s.description      = 'AMR Tapjoy adapter allows publishers to mediate Tapjoy interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-TAPJOY.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'AMRAdapterTapjoy/Libs/AMRAdapterTapjoy.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.34'
  s.dependency 'TapjoySDK', '13.3.0'
end
