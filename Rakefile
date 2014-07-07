require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

#Get Color
RSpec::Core::RakeTask.new(:unit) do |t|
	t.rspec_opts = [].tap do |a|
		a.push('--color')
		a.push('--format progress')
	end.join(' ')
end

desc 'Run All Tests'
task :test => [:unit]

task :default => [:test]
