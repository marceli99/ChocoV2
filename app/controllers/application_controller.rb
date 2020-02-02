class ApplicationController < ActionController::Base
  def index
  end
  # Devise runtime generated helpers
  def current_user
    super
  end
  def user_signed_in?
    super
  end
  def destroy_user_session_path
    super
  end
  def new_user_session_path
    super
  end
end
