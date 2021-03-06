$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'img_checker/version'

Gem::Specification.new do |s|
  s.name        = 'img_checker'
  s.version     = VERSION::STRING
  s.summary     = 'img_checker'
  s.description = 'A simple image size checking gem'
  s.authors     = ['Abishek V Ashok', 'Ankit R Gadiya']
  s.email       = ['abhi2424shekvashok@gmail.com', 'ankit4922@gmail.com']
  s.files       = `git ls-files bin lib LICENSE README.md`.split($RS)
  s.homepage    = 'https://github.com/Abhi2424shek/img_checker/'
  s.license     = 'GPL-3.0'
  s.add_runtime_dependency 'fastimage', '~> 2.0', '>= 2.0.0'
  s.executables << 'img_checker'
end
