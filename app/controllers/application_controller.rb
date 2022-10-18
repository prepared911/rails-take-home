class ApplicationController < ActionController::API
  def current_user
    User.find_by(email: request.headers['X-Email'])
  end
end
