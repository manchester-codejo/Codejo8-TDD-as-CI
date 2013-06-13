Given(/^one item "(.*?)" scanned$/) do |sku|
	visit '/'
	click_button('Start')
	select(sku, :from => 'sku')
	click_button('Add')
end

When(/^the total is calculated$/) do
  	click_button('Total')
end

Then(/^the total is "(.*?)"$/) do |expected_total|
  	first("#total").text.should == expected_total
end
