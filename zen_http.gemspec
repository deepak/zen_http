# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zen_http/version'

Gem::Specification.new do |spec|
  spec.name          = "zen_http"
  spec.version       = ZenHttp::VERSION
  spec.authors       = ["Deepak Kannan"]
  spec.email         = ["kannan.deepak@gmail.com"]

  spec.summary       = %q{Another HTTP ruby client}
  spec.description   = %q{Another HTTP ruby client}
  spec.homepage      = "http://www.deepak-kannan.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
