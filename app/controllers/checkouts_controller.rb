class CheckoutsController < ApplicationController
  def create
    checkout = Checkout.new(user_id: current_user.id, book_id: params[:book_id])
    checkout.save!
    redirect_back(fallback_location: root_path)
  end

  def checkin
    current_checkout = Checkout.where(user_id: current_user.id, book_id: params[:book_id], checkin_date: nil).first
    current_checkout.update(checkin_date: Date.today)
    redirect_back(fallback_location: root_path)
  end

private
  def checkout_params
    params.require(:user).permit(:user_id, :book_id, :checkin_date)
  end
end
