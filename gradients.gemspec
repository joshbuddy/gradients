# -*- encoding: utf-8 -*-

require File.join(File.dirname(__FILE__), 'lib', 'gradients', 'version')

Gem::Specification.new do |s|
  s.name = 'gradients'
  s.version = Gradients::VERSION
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Hull"]
  s.date = '2010-07-31'
  s.description = s.summary = "Colours! Colours! The creeping chaos fucks my mind. Generate gradients because colors are fun."
  s.email = %q{joshbuddy@gmail.com}
  s.extra_rdoc_files = ['README.rdoc']
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://github.com/joshbuddy/gradients}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.test_files = `git ls-files`.split("\n").select{|f| f =~ /^spec/}
  s.rubyforge_project = 'gradients'

  # dependencies
  s.add_development_dependency 'rspec', "~> 1.3.0"
  s.add_development_dependency 'rake'
end

