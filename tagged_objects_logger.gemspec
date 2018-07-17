lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tagged_objects_logger/version'

Gem::Specification.new do |spec|
  spec.name          = 'tagged_objects_logger'
  spec.version       = TaggedObjectsLogger::VERSION
  spec.authors       = ['Truncourist']
  spec.email         = ['mahmoud.saied@blink22.com']

  spec.summary       = 'Tagged Objects Logger'
  spec.description   = 'A simple Logger, that logs objects error tagged
                        with their class name and IDs'
  spec.homepage      = 'https://github.com/Truncourist/tagged_objects_logger'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
