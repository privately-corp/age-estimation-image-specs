Pod::Spec.new do |s|
    s.name         = "AgeEstimationImage"
    s.version      = "0.1.1"
    s.summary      = "Image and video on-device age estimation."
    s.description  = <<-DESC
    Image and video ion-device age estimation based on machine learning.
    DESC
    s.homepage     = "https://github.com/privately-corp/age-estimation-image-specs"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022 Privately SA
                  LICENSE
                }
    s.author             = { "Mathieu Monney" => "developer.contact@privately.eu" }
    s.source       = { :http => 'https://sos-ch-dk-2.exo.io/eu.privately.sdk/ios/age-estimation/AgeEstimationImage-0.1.1.xcframework.zip' }
    s.vendored_frameworks = ["AgeEstimationImage.xcframework"]
    s.dependency 'PrivatelyCoreIos', '0.1.1'
    s.dependency 'TensorFlowLiteObjC', '~> 2.7.0'
    s.platform = :ios
    s.swift_version = "5.5"
    s.ios.deployment_target  = '14.0'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end