When(/^I fill in "(.*?)", with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I select '(\d+)'$/) do |arg1|
  select '4', from: 'Rating'
end

Then(/^I should see '(\d+)'$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^I fill in "(.*?)", with: "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^an email should be sent to "(.*?)"$/) do |email_address|
  open_email email_address
  expect(current_email).not_to be_nil
end

Then(/^the email should contain "(.*?)"$/) do |content|
  expect(current_email).to have_content content
end