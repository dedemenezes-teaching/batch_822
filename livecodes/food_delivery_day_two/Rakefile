# frozen_string_literal: true

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--require ./bonus_formatter.rb --format BonusFormatter'
end

# desc 'Look for style guide offenses in your code'
# task :rubocop do
#   sh 'rubocop --format simple || true'
# end

desc 'Launch tests for the meal namespace only'
task :int_meal do
  sh 'rspec -t meal || true'
end

desc 'Launch tests for the customer namespace only'
task :int_customer do
  sh 'rspec -t customer || true'
end

desc 'Launch tests for the employee namespace only'
task :int_employee do
  sh 'rspec -t employee || true'
end

desc 'Launch tests for the order namespace only'
task :int_order do
  sh 'rspec -t _order || true'
end

task default: %i[spec] # rubocop

task meal: %i[int_meal] # rubocop

task customer: %i[int_customer] # rubocop

task employee: %i[int_employee] # rubocop

task order: %i[int_order] # rubocop
