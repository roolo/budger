When /^I visit page with login form$/ do
  visit('/sign_in')
end

Then /^I should see a login page$/ do
  page.should have_css('#new_user')
end

Given /^existing user$/ do
  @user = Factory.create :testing_user
end

When /^I submit filled in login form$/ do
  within('#new_user') do
    fill_in 'Email',    with: @user.email
    fill_in 'Password', with: @user.password
  end

  click_button('Sign in')
end

Then /^I should be logged in$/ do
  page.should have_content('Signed in successfully.')
end

Given /^Not logged in user$/ do
  visit('/sign_out')
end

When /^user is logged in$/ do
  step "I visit page with login form"
  step "I submit filled in login form"
end
