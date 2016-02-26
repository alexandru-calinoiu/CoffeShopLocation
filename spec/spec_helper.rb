require 'rubygems'

# Require all of the RSpec Support libraries
Dir[File.expand_path(File.join('../support/**/*.rb'), __FILE__)].each { |f| require f }
Dir[File.expand_path(File.join('../../lib/**/*.rb'), __FILE__)].each { |f| require f }

require 'simplecov'
require 'rspec/its'