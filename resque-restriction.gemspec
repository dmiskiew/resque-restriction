Gem::Specification.new do |s|
  s.name = "resque-restriction"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Richard Huang"]
  s.date = "2015-11-02"
  s.description = "resque-restriction is an extension to resque queue system that restricts the execution number of certain jobs in a period time, the exceeded jobs will be executed at the next period."
  s.email = "flyerhzm@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "CHANGELOG.md",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "init.rb",
    "lib/resque-restriction.rb",
    "lib/resque-restriction/job.rb",
    "lib/resque-restriction/restriction_job.rb",
    "rails/init.rb",
    "resque-restriction.gemspec",
    "spec/redis-test.conf",
    "spec/resque-restriction/job_spec.rb",
    "spec/resque-restriction/restriction_job_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/flyerhzm/resque-restriction"
  s.rubygems_version = "2.2.2"
  s.summary = "resque-restriction is an extension to resque queue system that restricts the execution number of certain jobs in a period time."

  s.add_dependency 'activejob'
  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, [">= 1.7.0"])
    else
      s.add_dependency(%q<resque>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<resque>, [">= 1.7.0"])
  end
end

