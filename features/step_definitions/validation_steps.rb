Given('I access the page') do
  @home_page.open 
end
  
And('I text value {string}') do |number|
  @home_page.input_value(number)
end

When('I click in Calculate') do
  @home_page.click
end

Then('I recive the results {string}') do |expect_alert|
  alert = find("#resultDiv")
  expect(alert.text).to eql expect_alert
end
