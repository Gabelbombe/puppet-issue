require 'rubygems'
require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'

PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.ignore_paths = [
  "spec/**/*.pp",
  "pkg/**/*.pp",
]

desc 'Run Puppet in noop, check for syntax errors.'
task :validate do
  Dir['manifests/**/*.pp'].each do |manifest|
    sh "puppet parser validate --noop #{manifest}"
  end
end
