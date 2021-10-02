Given('I visit The greatest factorial calculator website') do
  @home_page.open 
end
  
And('I enter with the value {string}') do |value|
  @home_page.input_value(value)
end

When('I click on Calculate button') do
  @home_page.click
end

Then('I should see the following outcome {string}') do |expect_alert|
  alert = find("#resultDiv")
  expect(alert.text).to eql expect_alert
end
