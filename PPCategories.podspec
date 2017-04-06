Pod::Spec.new do |s|
  s.name         = "PPCategories"
  s.version      = "0.0.4"
  s.summary      = "PPCategories-CategoryRepository"
  s.homepage     = "https://github.com/SimleCp/PPCategories"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "SimleCp" => "simlecp@gmail.com" }
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.source       = { :git => 'https://github.com/SimleCp/PPCategories.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'PPCategories/**/*.{h,m}'
  s.public_header_files = 'PPCategories/**/*.{h}'

#https://github.com/SimleCp/PPCategories.git

end
