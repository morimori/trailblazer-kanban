require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

chrome_options = Selenium::WebDriver::Chrome::Options.new
chrome_options.add_argument('--headless')
chrome_options.add_argument('--disable-gpu')

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
end
Capybara.javascript_driver = :selenium_chrome

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
