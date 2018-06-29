lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pingtest/version'

Gem::Specification.new do |s|
  s.name        = 'pingtest'
  s.version     = Pingtest::VERSION
  s.date        = Time.now.strftime('%F')
  s.summary     = "Pong on Ping"
  s.description = "A simple pong on ping test gem"

  s.files       = Dir.glob("lib/**/*.rb")

  s.authors     = ["Adrián Tóth"]
  s.email       = 'adricko28@gmail.com'

  s.homepage    = 'http://rubygems.org/gems/pingtest'
  s.metadata    = { "source_code_uri" => "https://github.com/europ/pingtest-gem" }

  s.license     = 'MIT'
end
