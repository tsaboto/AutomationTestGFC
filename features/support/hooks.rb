Before do
    @home_page = HomePage.new
end

After do
    page.save_screenshot("logs/screenshot.png")
end