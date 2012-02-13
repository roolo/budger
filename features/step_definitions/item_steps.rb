Then /^I should see edit form for item$/ do
  page.should have_css("form#edit_item")
end
Then /^I should see a detail of that item$/ do
  page.should have_content("Back")
end
When /^the budget has one expense$/ do
  @expense = Factory.create :expense, budget: @budget
end
Then /^My expense should be in another budget$/ do
  original_budget_id = @expense.budget_id
  @expense.reload
  page.should_not have_css('tbody tr')
end
