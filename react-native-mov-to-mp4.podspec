require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = 'react-native-mov-to-mp4'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  # s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/taltultc/react-native-mov-to-mp4'
  s.source       = { :git => "https://github.com/brunoosilva/react-native-mov-to-mp4", :tag => "#{s.version}" }
  s.platform      = :ios, '7.0'

  s.source_files  = "ios/*.{h,m}"
  s.static_framework = true


  s.dependency "React"
end
