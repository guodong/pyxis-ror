class BaseController < JSONAPI::ResourceController
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def context
    {user: current_user}
  end

  def user_not_authorized exception
    head :forbidden
    p exception.query
  end

  def current_user
    @current_user ||= User.find_by(id: "0ba05682-9e76-4cc9-9c95-467135f99e22")
  end

end