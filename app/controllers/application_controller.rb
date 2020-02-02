class ApplicationController < ActionController::Base
  def index
    @posts = Post.order('created_at DESC')
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
  def authenticate_user!
    unless current_user
      redirect_to :root
    end
  end
end
