require 'capybara/cucumber'

# use firefox

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
Capybara.javascript_driver = :selenium_firefox
Capybara.default_driver = :selenium_firefox
Capybara.default_max_wait_time = 15

# use chrome
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end

# Capybara.default_driver = :chrome
# Capybara.javascript_driver = :chrome
