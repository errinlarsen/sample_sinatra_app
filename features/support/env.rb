require File.join( File.dirname( __FILE__ ), '..', '..', 'boot' )
require 'sinatra'

Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false

require File.join( File.dirname( __FILE__ ), '..', '..', 'sinatra_sample_app' )

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Sinatra::Application
Capybara.default_selector = :css

require 'database_cleaner'
require 'database_cleaner/cucumber'

DatabaseCleaner.strategy = :truncation

class ApplicationWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  ApplicationWorld.new
end
