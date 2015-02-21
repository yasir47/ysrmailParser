# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'ysrmailParser/version'

Gem::Specification.new do |spec|
  spec.name          = "ysrmailParser"
  spec.version       = YsrmailParser::VERSION
  spec.authors       = ["Syed Muhammad Yasir"]
  spec.email         = ["syed.yasir@tenpearls.com"]

  spec.summary       = %q{mail parser}
  spec.description   = %q{Parse out email from raw data. For Further Description or use please visit https://github.com/yasir47/ysrmailParser}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


end
