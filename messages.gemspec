# -*- encoding: utf-8 -*-
require File.expand_path('../lib/messages/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francisco Martins"]
  gem.email         = ["franciscomxs@gmail.com"]
  gem.description   = %q{Simple 'error_messages' and 'flash_messages' manager}
  gem.summary       = %q{Helpers for error_messages and flash_messages}
  gem.homepage      = "https://github.com/franciscomxs/messages"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "messages"
  gem.require_paths = ["lib"]
  gem.version       = Messages::VERSION
end
