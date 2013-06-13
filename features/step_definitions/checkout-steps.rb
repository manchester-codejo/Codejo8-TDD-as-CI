Given(/^one item "(.*?)" scanned$/) do |sku|
	visit '/'
	click_button('Start')
	select(sku, :from => 'sku')
	click_button('Add')
end

When(/^the total is calculated$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the total is "(.*?)"$/) do |expected_total|
  pending # express the regexp above with the code you wish you had
end
