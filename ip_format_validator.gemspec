# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ip_format_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "ip_format_validator"
  spec.version       = IpFormatValidator::VERSION
  spec.authors       = ["Payaam Emami", "Asim Shakour"]
  spec.email         = ["payaamemami@gmail.com", "shakourasim@gmail.com"]
  spec.summary       = %q{This gem checks the format of an IP address}
  spec.description   = %q{The two requirements for the format of the IP address: Must either be IPv4 or IPv6 format and Must be a public IP address.}
  spec.homepage      = ""
  spec.license       = "GNU GPLv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activemodel'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end