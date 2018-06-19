Pod::Spec.new do |s|
 s.name = 'LayoutAnchor'
 s.version = '0.0.1'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'This is an alternative to replacing NSLayoutAnchor with an interface similar to SnapKit'
 s.homepage = 'https://github.com/viniciusfranca/LayoutAnchor'
 s.social_media_url = ''
 s.authors = { "Vinicius França" => "viniciusdasilva10@hotmail.com" }
 s.source = { :git => "https://github.com/viniciusfranca/LayoutAnchor.git", :tag => "v"+s.version.to_s }
 s.platforms = { :ios => "9.0" }
 s.requires_arc = true

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files  = "Sources/**/*.swift"
     ss.framework  = "Foundation"
 end
end
