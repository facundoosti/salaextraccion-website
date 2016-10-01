desc 'Start a console'
task :console do
  ENV['RACK_ENV'] ||= 'development'
  %w(irb irb/completion).each { |r| require r }
  require_relative 'init'

  ARGV.clear
  IRB.start
end
