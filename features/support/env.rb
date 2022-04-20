require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time=10
end
