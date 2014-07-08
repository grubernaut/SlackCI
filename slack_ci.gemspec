# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack_ci/version'

Gem::Specification.new do |spec|
  spec.name          = 'slack_ci'
  spec.version       = SlackCi::VERSION
  spec.authors       = ['Jake Champlin']
  spec.email         = ['jake.champlin.27@gmail.com']
  spec.summary       = 'Use Slack from the terminal!'
  spec.description   = 'Post Slack Messages to a channel from the terminal!'
  spec.homepage      = 'https://github.com/grubernaut/SlackCI'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Require >= 1.9 Ruby
  spec.required_ruby_version = '>=1.9'

  # Dependencies
  spec.add_dependency 'rspec', '~>3.0'
  spec.add_dependency 'json', '~>1.8.1', '>= 1.8.1'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3.2', '>=10.3.2'
  spec.add_development_dependency 'rubocop', '~>0.24.1', '>= 0.23.0'
end
