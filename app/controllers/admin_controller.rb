class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  private
  def authenticate_user!
    unless current_user
      redirect_to :root
    end
  end
end
