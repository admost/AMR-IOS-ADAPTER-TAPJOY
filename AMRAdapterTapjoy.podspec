Pod::Spec.new do |s|
  s.name             = 'AMRAdapterTapjoy'
  s.version          = '12.8.1.1'
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
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterTapjoy/Libs/libAMRAdapterTapjoy.a'
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'TapjoySDK', '12.8.1'
end
