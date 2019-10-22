# frozen_string_literal: true

class LoginsController < ApplicationController
  before_action :authenticate_user!

  def home; end

  def secret; end

  def create
    listing_params = params.permit(:bsb, :authenticity_token, :secret, :commit)

    puts listing_params
   end
end
