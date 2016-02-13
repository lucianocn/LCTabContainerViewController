Pod::Spec.new do |s|
  s.name         = 'LNTabContainerViewController'
  s.version      = '1.0.0'
  s.platform 	 = :ios
  s.ios.deployment_target = '6.0'
  s.summary      = 'The easiest way to handle a container with multiple views.'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/lucianocn/LNTabContainerViewController'
  s.requires_arc = true
  s.author = {
    'Luciano Nascimento' => 'luciano.cn@icloud.com'
  }
  s.source = {
    :git => 'https://github.com/lucianocn/LNTabContainerViewController',
    :tag => 'v1.0.0'
  }
  s.source_files = 'Lib/*.{m,h}'
end