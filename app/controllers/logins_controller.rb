# frozen_string_literal: true

class LoginsController < ApplicationController
  before_action :authenticate_user!

  def home; end

  def secret; end
end
