Given /^the user own (\d+) budget[s]?$/ do |budgets_number|
  budgets_number.to_i.times.each do
    Budget.create([user: @user])
  end
end
When /^there are another (\d+) budgets$/ do |budgets_number|
  budgets_number.to_i.times.each do
    Budget.create
  end
end
Then /^I should see (\d+) budgets$/ do |budgets_number|
  lines_in_table = page.all(:xpath, '//tr').count
  supposed_lines_in_table = budgets_number.to_i + 1 # Plus one for header line
  lines_in_table.should eq supposed_lines_in_table
end
Given /^the user own one budget$/ do
  @budget = Budget.create(user_id: @user)
end
When /^the budget has (\d+) expenses$/ do |expenses_number|
  @supposed_expenses_number = expenses_number
  expenses_number.to_i.times do
    @budget.expenses.create(name: 'Expense', item_type: Item::TYPE_EXPENSE)
  end
  @budget.save
end
When /^the budget has (\d+) income$/ do |incomes_number|
  @supposed_incomes_number = incomes_number
  incomes_number.to_i.times do
    @budget.incomes.create(name: 'Income', item_type: Item::TYPE_INCOME)
  end
  @budget.save
end
Then /^I should see table with all expenses$/ do
  page.should have_content('Expenses')
  within('table#expenses') do
    page.all(:css, 'tbody tr').count.should eq @supposed_expenses_number.to_i
  end
end
When /^I should see table with all incomes$/ do
  page.should have_content('Incomes')
  within('table#incomes') do
    page.all(:css, 'tbody tr').count.should eq @supposed_incomes_number.to_i
  end

end
