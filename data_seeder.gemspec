# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_seeder/version'

Gem::Specification.new do |spec|
  spec.name          = "data_seeder"
  spec.version       = DataSeeder::VERSION
  spec.authors       = ["Venkatraman","Abdul Hameed"]
  spec.email         = ["venkatka@outlook.com", "rmahameed005@yahoo.com"]

  spec.summary       = %q{Gem to generate and seed random data to DB}
  spec.description   = %q{This gem uses Faker to generate random data and provides a set of tasks to seed DB with the generated data}
  spec.homepage      = "https://github.com/rubydoobydoos/data_seeder"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency 'faker', '>= 1.4.3', '<2'
  spec.add_runtime_dependency 'rails', '>= 3.2.0', '< 5'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
