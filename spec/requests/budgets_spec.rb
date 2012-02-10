require 'spec_helper'

describe "BudgetsController" do
  describe "POST /budgets/:budget_id/adopt/:item_id" do


    it "Move item into another budget" do
      budget = Factory.create :budget
      another_budget = Factory.create :budget, user: budget.user
      expense = Factory.create :expense, budget: budget

      post user_session_path(budget.user)

      post budget_adopt_item_path(another_budget, expense)
      response.status.should eq 200

      expense.budget_id.should eq another_budget.id
    end
  end
end

