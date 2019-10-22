# frozen_string_literal: true

class LoginsController < ApplicationController
  before_action :authenticate_user!

  def home; end

  def secret; end

  def create
    listing_params = params.permit(:bsb, :authenticity_token, :secret, :commit)
    bsb = listing_params[:secret]
    user_id = current_user.id

    @user = User.update(user_id, bsb: bsb)
    if @user
      redirect_to '/'
    else
      puts 'something went wrong'
    end
   end
end
