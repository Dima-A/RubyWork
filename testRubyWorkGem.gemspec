Gem::Specification.new do |s|
  s.name               = "testRubyWorkGem"
  s.version            = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dima-A"]
  s.date = %q{2019-12-03}
  s.description = %q{This gem only for testing and nothing else}
  s.files = ["lib/testRubyWorkGem.rb", "bin/testRubyWorkGem"]
  s.test_files = ["spec/testRubyWorkGem_spec.rb"]
  s.homepage = %q{http://github.com/Dima-A/RubyWork}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{testRubyWorkGem!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end