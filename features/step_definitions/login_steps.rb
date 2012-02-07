When /^I visit page with login form$/ do
  visit('/sign_in')
end

Then /^I should see a login page$/ do
  page.should have_css('#new_user')
end

