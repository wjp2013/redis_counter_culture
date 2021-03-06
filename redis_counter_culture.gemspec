
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "redis_counter_culture/version"

Gem::Specification.new do |spec|
  spec.name          = "redis_counter_culture"
  spec.version       = RedisCounterCulture::VERSION
  spec.authors       = ["Victor Wang"]
  spec.email         = ["wjp2013@gmail.com"]

  spec.summary       = %q{Counter cache gem by Redis.}
  spec.description   = %q{Counter cache gem by Redis.}
  spec.homepage      = "https://github.com/wjp2013/redis_counter_culture"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "activerecord"
  spec.add_dependency "redis-objects"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "mock_redis"
  spec.add_development_dependency "mysql2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
