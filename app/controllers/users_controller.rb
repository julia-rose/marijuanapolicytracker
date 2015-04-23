class UsersController < ApplicationController

  def show
    @user = current_user
    @subscriptions = Subscription.where(user_id:@user.id)
  end

end
