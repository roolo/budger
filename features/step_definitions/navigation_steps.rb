When /^I visit welcome page$/ do
  visit(root_path)
end
Then /^I should see a welcome page$/ do
  page.should have_content('Welcome')
end
When /^I visit page for (\w+)$/ do |page_name|
  visit(send(page_name+'_path'))
end

When /^I click on (\w+) link$/ do |link_text|
  click_link(link_text)
end
