require File.dirname(__FILE__) + "/../spec_helper"
require "steak"
require 'capybara/rails'
require 'database_cleaner'

Rspec.configure do |config|
  config.include Capybara
  
  Capybara.default_selector = :css
  
  config.use_transactional_fixtures = false
  
  DatabaseCleaner.strategy = :truncation  
  config.before(:each) { DatabaseCleaner.start; }
  config.after(:each)  { DatabaseCleaner.clean; }

  config.before(:each) do
    Capybara.current_driver = :selenium if example.options[:js]
  end
    
  config.after(:each)  do
    Capybara.use_default_driver if example.options[:js]
  end    
end

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
