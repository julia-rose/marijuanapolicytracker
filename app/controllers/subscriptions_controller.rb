class SubscriptionsController < ApplicationController


  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
    redirect_to state_path(@subscription.state_id)
  end

  def subscription_params
    return params[:subscription].permit(:user_id, :state_id)
  end

  def destroy
    @subscription = Subscription.find(params[:state_id])
    @subscription.destroy
    redirect_to "/profile"
  end

end
