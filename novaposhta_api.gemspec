# frozen_string_literal: true

require_relative 'lib/novaposhta_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'novaposhta_api'
  spec.version       = NovaposhtaApi::VERSION
  spec.authors       = ['venet']
  spec.email         = ['venet.dev@gmail.com']

  spec.summary       = 'Novaposhta API 2.0 client'
  spec.description   = 'Ruby wrapper for NovaPoshta API 2.0.'
  spec.homepage      = 'https://github.com/venethub/novaposhta_api'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r(^exe/)) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 2.2'
  spec.add_dependency 'hashie', '~> 4.1'

  spec.add_development_dependency 'rubocop', '~> 1.25'
end
