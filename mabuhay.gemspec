# coding: utf-8
lib = File.expand_path( '../lib', __FILE__ )
$LOAD_PATH.unshift( lib ) unless $LOAD_PATH.include?( lib )

require 'mabuhay/constants'

Gem::Specification.new do |spec|
  spec.name          = "mabuhay"
  spec.version       = Mabuhay::VERSION
  spec.authors       = ["Matt Meng"]
  spec.email         = ["mengmatt@gmail.com"]
  spec.summary       = Mabuhay::MABUHAY_DESCRIPTION
  spec.description   = Mabuhay::MABUHAY_DESCRIPTION
  spec.homepage      = "http://mattmeng.github.io/mabuhay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split( "\x0" )
  spec.executables   = spec.files.grep( %r{^bin/} ) {|f| File.basename( f )}
  spec.test_files    = spec.files.grep( %r{^(test|spec|features)/} )
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "r3po", "~> 0"
end
