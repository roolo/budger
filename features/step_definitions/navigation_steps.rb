When /^I visit welcome page$/ do
  visit(root_path)
end
Then /^I should see a welcome page$/ do
  page.should have_content('Welcome')
end
When /^I visit page for (\w+)$/ do |page_name|
  visit(send(page_name+'_path'))
end
When /^I visit page for (\w+) of that (\w+)$/ do |page_name, entity|
  visit("/budgets/#{instance_variable_get("@#{entity}").id}/items")
end

When /^I click on (\w+) link$/ do |link_text|
  click_link(link_text)
end
