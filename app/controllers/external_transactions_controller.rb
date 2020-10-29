class ExternalTransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @total_time = current_user.tasks.where(group_id:nil).sum(:amount)
    @tasks = current_user.tasks.where(group_id:nil)
  end
end
