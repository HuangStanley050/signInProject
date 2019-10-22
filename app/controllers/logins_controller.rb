# frozen_string_literal: true

class LoginsController < ApplicationController
  before_action :authenticate_user!

  def home; end

  def secret; end

  def create
    listing_params = params.require(:secret).permit(:bsb)

    puts listing_params
   end
end
