Pod::Spec.new do |s|
  s.name = 'HWHelperDemo'
  s.version = '1.0.2'
  s.license = 'MIT'
  s.summary = 'Harness the power of auto layout with a simplified, chainable, and compile time safe syntax.'
  s.homepage = 'https://github.com/No-Karma/HWHelperDemo'
  s.authors = { 'Haiwen' => 'guduershao@126.com' }
  s.social_media_url = 'http://twitter.com/robertjpayne'
  s.source = { :git => 'https://github.com/No-Karma/HWHelperDemo.git', :tag => '1.0.2' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'HWHelperDemo/*.swift'

  s.requires_arc = true
end
