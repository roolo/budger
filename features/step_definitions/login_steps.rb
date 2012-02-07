When /^I visit page with login form$/ do
  visit('/users/new')
end

Then /^I should see a login page$/ do
  page.has_header?
end

