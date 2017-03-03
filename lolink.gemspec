Gem::Specification.new do |s|
  s.name        = 'lolink'
  s.version     = '0.0.4'
  s.date        = '2017-03-02'
  s.summary     = "get lol download links!"
  s.description = "lol中国区客户端和升级补丁下载器"
  s.authors     = ["kikyous"]
  s.email       = 'kikyous@163.com'
  s.files       = Dir["README.md", "MIT-LICENSE", "lib/**/*.rb"]
  s.executables = ['lolink']
  s.homepage    = 'https://github.com/kikyous/lolink'
  s.license     = 'MIT'
  s.add_runtime_dependency 'http', '~> 2.0', '>= 2.0.0'
  s.add_runtime_dependency 'nokogiri', '~> 1.7', '>= 1.7.0'
end
