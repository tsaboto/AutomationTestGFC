require "capybara"
require "capybara/cucumber"
require "webdrivers"


case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "fire_headless"
    @drive = :selenium_headless
when "chrome_headless"
    @driver = :selenium_chrome_headless
else
    raise "Invalid Browser, the variable @dirver is empty "    
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.default_max_wait_time = 10
end