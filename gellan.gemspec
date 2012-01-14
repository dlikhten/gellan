# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'gellan/version'

Gem::Specification.new do |s| 
  s.name = "gellan"
  s.version = Gellan::VERSION
  s.author = "Dmitriy Likhten"
  s.email = "dlikhten@gmail.com"
  s.homepage = ""
  s.platform = Gem::Platform::RUBY
  s.summary = "A tool to create static or dynamic maps using any provider."
  s.autorequire = "gellan"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]

  s.add_development_dependency "rspec", "~> 2.0"

  s.files = Dir.glob("{lib}/**/*") + %W{README.md}
  #s.test_files = FileList["{spec}/**/*spec.rb"].to_a
  s.require_path = "lib"
end
