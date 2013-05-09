# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv_streamer/version'

Gem::Specification.new do |gem|
  gem.name          = "csv_streamer"
  gem.version       = CsvStreamer::VERSION
  gem.authors       = ["smsohan"]
  gem.email         = ["sohan39@gmail.com"]
  gem.description   = %q{Provides a simple method to stream CSV files from Ruby on Rails Controllers}
  gem.summary       = %q{Single line method call to generate and render CSV files using streaming}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
