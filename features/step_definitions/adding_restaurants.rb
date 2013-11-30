Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2 
end

When(/^I press "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^A restaurant exists$/) do
  visit '/'
  click_link "Add Restaurants"
  fill_in "Name", with: "Devesh"
  fill_in "Description", with: "the creme friache was awesome"
  click_on "Save Restaurant"
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link arg1 
end

Given(/^I go back to the homepage$/) do
  visit '/'
end

And /^show me the page$/ do
  save_and_open_page
end