Then /^There should be no items in the table$/ do
  page.all(:css, 'tbody tr').count.should eq 0
end
