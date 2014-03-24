# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_server/version'

Gem::Specification.new do |spec|
  spec.name          = "file_server"
  spec.version       = FileServer::VERSION
  spec.authors       = ["LFDM"]
  spec.email         = ["1986gh@gmail.com"]
  spec.summary       = %q{Simple fileserver using Sinatra and Puma.}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "sinatra"
  spec.add_dependency "puma"
end
