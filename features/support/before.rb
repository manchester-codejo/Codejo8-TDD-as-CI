require 'capybara/cucumber'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'http://localhost:5000/'
end
