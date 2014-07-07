require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

# RSpec Test Task
RSpec::Core::RakeTask.new(:unit) do |t|
  t.rspec_opts = [].tap do |a|
    a.push('--color')
    a.push('--format progress')
  end.join(' ')
end

# RuboCop Test Task
RuboCop::RakeTask.new(:rubocop)

desc 'Run All Tests'
task 'test' => [:unit, :rubocop]

task 'default' => [:test]
