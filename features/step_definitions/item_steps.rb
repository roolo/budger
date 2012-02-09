Then /^I should see edit form for item$/ do
  page.should have_css("form#edit_item")
end
Then /^I should see a detail of that item$/ do
  page.should have_content("Back")
end
