require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "NitroJson"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platforms    = { :ios => min_ios_version_supported }
  # s.source       = { :git => "https://github.com/angelo-hub/react-native-nitro-json.git", :tag => "#{s.version}" },
  s.source       = { :git => "https://github.com/angelo-hub/react-native-nitro-json.git" },

  s.source_files = [
    # Implementation (Swift)
    "ios/**/*.{h,m,swift}",
    "cpp/**/*.{h,hpp,cpp}"
  ]

  # s.pod_target_xcconfig = {
  #   # C++ compiler flags, mainly for folly.
  #   "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) FOLLY_NO_CONFIG FOLLY_CFG_NO_COROUTINES"
  # }

  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/ios'
  }

  load 'nitrogen/generated/ios/NitroJson+autolinking.rb'
  add_nitrogen_files(s)

  s.dependency 'React-jsi'
  s.dependency 'React-callinvoker'
  install_modules_dependencies(s)
end