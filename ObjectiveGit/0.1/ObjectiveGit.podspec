Pod::Spec.new do |s|
  s.name          =  "ObjectiveGit"
  s.version       =  "0.2"
  s.summary       =  "Objective-Slavikus bindings to libgit2."
  s.homepage      =  "https://github.com/libgit2/objective-git"
  s.license       =  'MIT'
  s.author        =  { "Tim Clem" => "timothy.clem@gmail.com", "Josh Abernathy" => "josh@github.com" }
  s.source        =  { :git => "https://github.com/slavikus/objective-git.git", :submodules => true }
  s.source_files  =  'Classes/**/*.{h,m}'
  s.osx.libraries =  %w|ssl crypto z|
  s.ios.libraries =  %w|z|
  s.requires_arc  =  true

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.6'

  s.dependency 'libgit2', '0.25.1'
  s.dependency 'libssh2'
  s.dependency 'openssl', '1.0.1j'

  s.prefix_header_contents = '#define GTLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);'
 
  s.description = <<-DESC
    Objective Git provides Objective-C bindings to the libgit2 linkable C Git library.
    This library follows the rugged API as close as possible while trying to maintain a native objective-c feel.
  DESC
end
